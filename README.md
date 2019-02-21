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
1. Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
SimpleLottery.sol
2. Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3. Copy and Paste the code from [SimpleLottery.sol](https://github.com/cmjjezze/Lottery/blob/master/SimpleLottery.sol)
4. Click on Settings, and Pick `0.4.18+commit.9cf63910`. Go to Compile, and Click `Start Compile`. 
5. Go to Run Tab,and select `JavaScript VM` (Follow the table below)

      | Environment  | JavaScript VM           |
      | -------------|:-----------------------:|
      | Account      | 0xca3...a733c (100ether)|
      | Gas limit    | 3000000                 |
      | Value        | 0            ether      |

6. Below the above table, you will see a textbox `uint256 duration` with a **Create** button.
7. Enter `60`(seconds) for testing, So that the lottery start and ends after 60 seconds or 1 minute.
8. Once you click the **Create** button, you will a table below.
 
      | SimpleLottery at 0x692...77b3a (memory)|                         |
      | ---------------------------------------|:-----------------------:|
      | (fallback)                             |                         |
      | TICKET_PRICE                           |                         |
      | ticketingCloses                        |                         |
      | tickets                                |`uint256`                |
      | winner                                 |                         |
      | withdraw                               |                         |
      | drawWinner                             |                         |
      | buy                                    |                         |

9. 
## Recurring Lottery
1. Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
SimpleLottery.sol
2. Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3. Copy and Paste the code from [RecurringLottery.sol](https://github.com/cmjjezze/Lottery/blob/master/RecurringLottery.sol)


## RNG Lottery
1. Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
SimpleLottery.sol
2. Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3. Copy and Paste the code from [RNG.sol](https://github.com/cmjjezze/Lottery/blob/master/RNGLottery.sol)


## Powerball Lottery
1. Go to the folder that you clone earlier and go to the directory of the smart contract solidity file. <br>
SimpleLottery.sol
2. Open your browser and enter this link: https://ethereum.github.io/browser-solidity/#optimize=false
3. Copy and Paste the code from [PowerballLottery.sol](https://github.com/cmjjezze/Lottery/blob/master/PowerballLottery.sol)
