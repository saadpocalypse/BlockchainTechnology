# Assignment 1

## What is the difference between mainnet and testnet?
Mainnet refers to the real world practical implementation of blockchain where transactions are executed. On the contrary, testnet is merely a development and testing environment, where contracts are simulated.

## Mention at least 3 units of ETH.
| Name      | Amount of Wei |
| ----------- | ----------- |
| Wei    | 1 unit of Wei |
| Kwei (babbage)  | 1000 units of Wei |
| Mwei (lovelace)     | 1000,000 units of Wei |

## Describe wrap around in integers with example.
The integer type in solidity is uint256 (unsigned integer). Like a linked list that wraps around, the integer jumps to its maximum value of 2<sup>256</sup> - 1 when decremented at 0, and jumps to its minimum value of 0 when incremented at 2<sup>256</sup> - 1. The -1 is there because 0 also requires space. It holds no negative values.

## Mention default values of integers, booleans, addresses and string in solidity.
| Data type      | Default value |
| ----------- | ----------- |
| Integer  | 0 |
| Boolean  | false |
| Address  | 0x0000 |
| String   | '' |

## What is a view function?
A view function is one whose ability is limited to just reading the variable and not changing or modifying it.

## What is the Difference between private and public visibility?
Private visibility limits the visibility of the function to the contract, while making the function public will make it accessible to the users.
