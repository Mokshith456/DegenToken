# Avalanche_module4

In the project we are creating an ERC20 token and deploying it on the Avalanche network for Degen Gaming.

## Description

In this project we are firstly writing a smart contract for an ERC20 token for Degen gaming and deploying it on the Avalanche network using showtract.
Showtrace basically allows you to explore and search the Avalanche C-Chain blockchain for transactions, addresses, tokens, prices and other activities taking place on Avalanche C-Chain (AVAX).
Once deployed we can track all the transactions happening on our account by just giving the account address and searching it.

## Getting Started

### Executing program

TO run this program paste this code on your remix platform and your gitpod platform. Once that is done we will have to run two commands on the gitpod terminal.
These two commands are for the contract to be deployed on the Avalanche c-chain blockchain network, this can be traced using the snowtrace website.
```
npx hardhat run scripts/deploy.js --network fuji
```
```
npx hardhat verify <your address> --network fuji
```
Once this is deployed on the network it will show on he snowtrace website. You will simply have to copy paste your address and you will be able to see what all transactions are happening on the network.
You may check this by running the mint, burn, transfer functions using remix and it will be refelcted on the snowtrace website.

## Authors

-Mokshhith P
-mokshithlucku06@gmail.com


## License

This project is licensed under the MIT license.
