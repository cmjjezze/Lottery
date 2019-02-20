pragma solidity ^0.4.18; 

contract RecurringLottery {
    
    struct Round {
        uint endBlock;
        uint drawBlock;
        Entry[] entries;
        uint totalQuantity;
        address winner;
    }
    
    struct Entry {
        address buyer;
        uint quantity;
    }

    uint constant public TICKET_PRICE = 1e15; // 0.0.1 ether for the ticker price per round

    mapping(uint => Round) public rounds;
    uint public round;
    uint public duration;
    mapping (address => uint) public balances;

    //the duration set for starting the lottery is the number of participants that could enter the round, once the set duration have meet,
    //there will be a winner on that round, and start a new round with same duration for the participants (for example: 5 duration, 5 participants per round)
    function RecurringLottery (uint _duration) public {
        duration = _duration;
        round = 1;
        rounds[round].endBlock = block.number + duration;
        rounds[round].drawBlock = block.number + duration;
    }

    function buy () payable public {
        require(msg.value % TICKET_PRICE == 0);

        if (block.number > rounds[round].endBlock) {
            round += 1;
            rounds[round].endBlock = block.number + duration;
            rounds[round].drawBlock = block.number + duration;
        }

        uint quantity = msg.value / TICKET_PRICE;
        Entry memory entry = Entry(msg.sender, quantity);
        rounds[round].entries.push(entry);
        rounds[round].totalQuantity += quantity;
    }

    function drawWinner (uint roundNumber) public {
        Round storage drawing = rounds[roundNumber];
        require(drawing.winner ==  address(0));
        require(block.number > drawing.drawBlock);
        require(drawing.entries.length > 0);

        // pick winner
        bytes32 rand = keccak256(
            block.blockhash(drawing.drawBlock)
        );
        uint counter = uint(rand) % drawing.totalQuantity;
        for (uint i=0; i < drawing.entries.length; i++) {
            uint quantity = drawing.entries[i].quantity;
            if (quantity > counter) {
                drawing.winner = drawing.entries[i].buyer;
                break;
            }
            else
                counter -= quantity;
        }
        
        balances[drawing.winner] += TICKET_PRICE * drawing.totalQuantity;
    }

    //transferring the ticket price to the winneraddress, 
    //the winner could only withdraw the ticket price for the lottery
    function withdraw () public {
        uint amount = balances[msg.sender];
        balances[msg.sender] = 0;
        msg.sender.transfer(amount);
    }

    function deleteRound (uint _round) public {
        require(block.number > rounds[_round].drawBlock + 100);
        require(rounds[_round].winner != address(0));
        delete rounds[_round];
    }

    function () payable public {
        buy();
    }
}
