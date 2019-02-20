pragma solidity ^0.4.18; 

contract SimpleLottery {
    uint public constant TICKET_PRICE = 1e16; // 0.01 ether

    address[] public tickets;
    address public winner;
    uint public ticketingCloses;

    //setting the duration of the lottery by seconds 60 = 1 minute
    function SimpleLottery (uint duration) public {
        ticketingCloses = now + duration;
    }

    //buying ticket for 0.01 ether with its corresponding account address
    function buy () public payable {
        //upon buying, ticket price must be set to 0.01
        require(msg.value == TICKET_PRICE);
        require(now < ticketingCloses);
        
        tickets.push(msg.sender);
    }

    //drawing the winner for the lottery after the setted duration for the lottery have ended
    function drawWinner () public {
        require(now > ticketingCloses);
        require(winner == address(0));

        bytes32 rand = keccak256(
            block.blockhash(block.number-1)
        );
        winner = tickets[uint(rand) % tickets.length];
    }

    //transferring the ticket price to the winneraddress, 
    //the winner could only withdraw the ticket price for the lottery
    function withdraw () public {
        require(msg.sender == winner);
        msg.sender.transfer(this.balance);
    }

    function () payable public {
        buy();
    }
}
