1. Problem : I want cash to settle emergencies (or any other thing), but I do not have money and do not want to sell/liquidate my hodlings (tokens). 

Solution: A lending dapp that allow me to take loans against my tokens, and my tokens earn yields to pay off my debts (loans)

2. About
This repository contains the source code and dependencies required to deploy a Solidity based VAULT smart contract that securely holds ETH whilst lending STABLE TOKEN to users on the Polygon network. The Loan is repayed overtime by the yield generated from the deposit.

3. Project description
This project implements a Vault that allows a user to borrow a stable token (pegged to USD) by depositing ether into the Vault as collateral.

The amount of tokens that can be borrowed is derived from the ETH/USD price provided by an on-chain oracle, and 200% collaterization ratio i.e 2ETH for ETH/USD price * 1/2 (For example sake: 2ETH, for 1lxUSD). 

The user is allowed to withdraw the collateral after repaying the borrowed tokens (or yields from Yearn has repaid the loan).

The amount of collateral available to withdraw depends on the current ETH/USD price and collaterization ratio provided by the Oracle.


4. Deployed contracts in Polygon (Mumbai) testnet
These contracts have been deployed in Mumbai at the following addreses:

PriceConsumerV3.sol : https://mumbai.polygonscan.com/address/0x7DD22D58a900fb80eAF562E202bbf478423B5aE3

MockOracle.sol : https://mumbai.polygonscan.com/address/0x3c8a6DD634Ac9343188aaB6944A887179A4Ecd7c

StableCoinToken.sol : https://mumbai.polygonscan.com/address/0x8A7B483A2842501dCAeA0BabeE24Ea117B72D911

Vault.sol : https://mumbai.polygonscan.com/address/0x6CfA8203fa8c02F979e1608eC2A2410C1e15017A

5. TODO
Robust collateralization
Implement liquidation
Implement Yearn (or other yield farming platform)
Use safemath
Improve test suite coverage
Gas optimization
Build Front-end
Improve README.md