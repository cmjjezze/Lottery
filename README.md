# Lottery
Design / Process flow for the Lottery


#### Link for the process flow's for the lottery : https://docs.google.com/presentation/d/1B9ZvZ7AoCuiURIWWPPlN3K2K8Ka5cIMDROxsmOvRn_Y/edit?usp=sharing

### Device Information
```bash
Operating System : Linux Ubuntu 18.04 LTS || 64-bit
CPU : Intel® Core™ i5-7200U CPU @ 2.50GHz × 4 
Memory : 11.6 GiB
Graphics : GeForce 940MX/PCIe/SSE2 
Disk : 245.1 GB
```

### Download or clone this repository : https://github.com/cmjjezze/Lottery.git

### Built With
* Ethereum Remix Link(for offline testing): https://ethereum.github.io/browser-solidity/#optimize=false


Participant Address for the Remix:
```bash
0xca35b7d915458ef540ade6068dfe2f44e8fa733c
0x14723a09acff6d2a60dcdf7aa4aff308fddc160c
0x14723a09acff6d2a60dcdf7aa4aff308fddc160c
0x583031d1113ad414f02576bd6afabfb302140225
0xdd870fa1b7c4700f2bd7f44238821c26f7392148
```


## Simple Lottery
1.  Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
SimpleLottery.sol
2.  Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3.  Copy and Paste the code from [SimpleLottery.sol](https://github.com/cmjjezze/Lottery/blob/master/SimpleLottery.sol)
4.  Click on Settings, and Pick `0.4.18+commit.9cf63910`. Go to Compile, and Click `Start Compile`. 
5.  Go to Run Tab,and select `JavaScript VM` (Follow the table below)

      | Environment  | JavaScript VM           |
      | -------------|:-----------------------:|
      | Account      | 0xca3...a733c (100ether)|
      | Gas limit    | 3000000                 |
      | Value        | 0            ether      |

6. Below the above table, you will see a textbox `uint256 duration` with a **Create** button.
7. Enter `60`(seconds) for testing, So that the lottery start and ends after 60 seconds or 1 minute.
8. Once you click the **Create** button, you will a table below.
 
      | SimpleLottery at ............. (memory)|                         |
      | ---------------------------------------|:-----------------------:|
      | (fallback)                             |                         |
      | TICKET_PRICE                           |                         |
      | ticketingCloses                        |                         |
      | tickets                                |`uint256`                |
      | winner                                 |                         |
      | withdraw                               |                         |
      | drawWinner                             |                         |
      | buy                                    |                         |

* **TICKET_PRICE** - The price of a lottery ticket. When a user buys a ticket, they will be sending this value along with their transaction.
* **ticketingCloses** - A UNIX timestamp. Tickets can be purchased up until this time. The winner is drawn at least 5 minutes after this time so that the random blockhash is unknown during the ticketing process.
* **tickets** - A list of addresses that have bought tickets. An address can be in the array multiple times if the user buys multiple tickets.
* **winner** - The winner of the lottery. This is the user who gets to claim the prize. The prize cannot be withdrawn until the winner is set.

9.  Put a `0.01` for the value of ether.
10. Click **buy** button after you set the value of ether, You can buy tickets as long the duration is not yet ended. It will prompt an error if the duration is ended. You can also change the address upon buying ticket.
11. Click **drawWinner** button, for choosing the winner after the duration of the lottery has finished.
12. For viewing the winner after choosing the winner for the lottery, Click **winner** button to display the winner's address.
13. For claiming the lottery price, the winner's address must be selected first from the first table and click the **withdraw** button.


## Recurring Lottery
1.  Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
RecurringLottery.sol
2.  Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3.  Copy and Paste the code from [RecurringLottery.sol](https://github.com/cmjjezze/Lottery/blob/master/RecurringLottery.sol)
4.  Click on Settings, and Pick `0.4.18+commit.9cf63910`. Go to Compile, and Click `Start Compile`. 
5.  Go to Run Tab,and select `JavaScript VM` (Follow the table below)

      | Environment  | JavaScript VM           |
      | -------------|:-----------------------:|
      | Account      | 0xca3...a733c (100ether)|
      | Gas limit    | 3000000                 |
      | Value        | 0            ether      |
      
6.  Below the above table, you will see a text `uint256 duration` with a **Create** button.
7.  Enter `3`(three participants could buy per round for the ticket) for testing, After the 3rd participant have bought the ticket for the lottery. The round will proceed to the next round and you can pick the winner for the previous/first round.
8.  Once you click the **Create** button, you will a table below.
 
      | RecurringLottery at ............. (memory)|                         |
      | ------------------------------------------|:-----------------------:|
      | (fallback)                                |                         |
      | TICKET_PRICE                              |                         |
      | balances                                  |`address`                |
      | duration                                  |                         |
      | round                                     |                         |
      | rounds                                    |`uint256`                |
      | withdraw                                  |                         |
      | drawWinner                                |`uint256 roundNumber`    |
      | deleteRound                               |`uint256 _round`         |
      | buy                                       |                         |

* **TICKET_PRICE** -  The price of a single ticket. This can be small because multiple tickets can be purchased at once.
* **round** - The round number. This variable allows the lottery to be recurring.
* **rounds** - A mapping from round numbers to Round structs.
* **duration** - The duration of a single round in blocks. One day spans approximately 5,500 blocks.
* **balances** - A standard mapping of user balances.

9.  Put a `0.01` for the value of ether.
10. Click **buy** button after you set the value of ether, You can buy tickets 3 times because you set`3` participants upon creating the lottery. 
11. Buy ticket's three times with different addresses, and click the **round** button to know the round number that is playing. 
12. Pick the winner for the first round by setting `1` in the **drawWinner** textbox button and click it to pick the winner for the specified round.
13. To delete the round youwould like, you can just select the round number and input it in the **deleteRound** textbox button `uint256 _round`.


## RNG(Random Number Generated) Lottery
1.  Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
RNGLottery.sol
2.  Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3.  Copy and Paste the code from [RNG.sol](https://github.com/cmjjezze/Lottery/blob/master/RNGLottery.sol)
4.  Click on Settings, and Pick `0.4.18+commit.9cf63910`. Go to Compile, and Click `Start Compile`. 
5.  Go to Run Tab,and select `JavaScript VM` (Follow the table below)

      | Environment  | JavaScript VM           |
      | -------------|:-----------------------:|
      | Account      | 0xca3...a733c (100ether)|
      | Gas limit    | 3000000                 |
      | Value        | 0            ether      |
      
6.  Same with the recurring lottery for the setting up of duration. The setted duration is the number of participants that can buy the ticket for the lottery. Below the table you will see a textbox `uint256 duration, uint256 revealDuration` with a **Create** button. The reveal deadline is the turn's of every participant makes. Makes the reveal duration twice than the duration.
7.  Enter `3`(three participants could buy per round for the ticket) for `uint256 duration` and `5` for `uint256 revealDuration`.
8.  Once you click the **Create** button, you will a table below.
 
      | RecurringLottery at ............. (memory)|                         |
      | ------------------------------------------|:-----------------------:|
      | TICKET_PRICE                              |                         |
      | commitments                               |`address`                |
      | createCommitment                          |`address user, uint256 N`|
      | revealDeadline                            |                         |
      | seed                                      |                         |
      | ticketDeadline                            |                         |
      | tickets                                   |`uint256`                |
      | winner                                    |                         |
      | withdraw                                  |                         |
      | reveal                                    |`uint256 N`              |
      | drawWinner                                |                         |
      | buy                                       |`bytes32 commitment`     |
      
* **seed** - This is the random seed we will use to determine a winner. Each time a secret number is revealed, the seed is modified to incorporate the reveal.
* **commitments** - Every player submits a commitment with their ticket purchase. This mapping stores those commitments.
* **ticketDeadline** - The equivalent of endBlock from earlier contracts. Tickets cannot be purchased after this block number.
* **revealDeadline** - The reveal phase is new and requires a deadline as well. All reveals must occur after the ticket deadline and before the reveal deadline.

9.  Create the commitments first for the three participants with its **Account** address. For the `address user`, Select from the Participant Adresses above and for the `uint256 N` choose your desired number you would like to bet on. And click the **createCommitment** button. And you must see your commitment hash addres, for example(`0xbf32696fe932aecd7cd13363da23b3380fa5ffec108f548d105dffbf00d2914a`)
10. Copy and Paste the hash address to the **buy** button textboox `bytes32 commitment`
11. Put a `0.01` for the value of ether.
12. And repeat again to step 10 for the other two participant's.
13. Input the number for each address from the **reveal** button text, `uint256 N` for each address you commited. and click the **reveal** button.
14. Click the **revealDeadline** button to push through the buyed ticket to the lottery and to see the block number of the deadline.
15. Click the **drawWinner** button to pick the winner for the lottery.
16. Click the **winner** button to see the winner's address
17. For claiming the lottery price, the winner's address must be selected first from the first table and click the **withdraw** button.


## Powerball Lottery
1.  Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
PowerballLottery.sol
2.  Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3.  Copy and Paste the code from [PowerballLottery.sol](https://github.com/cmjjezze/Lottery/blob/master/PowerballLottery.sol)
4.  Click on Settings, and Pick `0.4.18+commit.9cf63910`. Go to Compile, and Click `Start Compile`. 
5.  Go to Run Tab,and select `JavaScript VM` (Follow the table below)

      | Environment  | JavaScript VM           |
      | -------------|:-----------------------:|
      | Account      | 0xca3...a733c (100ether)|
      | Gas limit    | 3000000                 |
      | Value        | 0            ether      |
      
      
      
* **MAX_POWERBALL_NUMBER** - The Powerball number has a more constricted range than the first five standard numbers. Official Powerball rules set this to 26.
* **ROUND_LENGTH** - The length of a round in seconds. This is set to 3 days for the full game, but the test script provided later in the chapter requires this to be set to 15 seconds for speedier rounds.
* **round** - The current round number. Tickets bought for a round are matched against only the winning numbers for that round.
* **rounds** - A mapping from round numbers to Round structs.

**POWERBALL Winning Mechanics**
![powerball](https://user-images.githubusercontent.com/44287896/53456497-a3776a00-3a69-11e9-9bf1-0431c774879f.png)
