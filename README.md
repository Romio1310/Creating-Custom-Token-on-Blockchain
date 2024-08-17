
# MyToken Project

## Overview

This project involves creating and deploying an ERC-20 token using Solidity. The smart contract allows the contract owner to mint tokens, while any user can burn and transfer tokens. The project was developed as part of the course to demonstrate the creation and management of tokens on the Ethereum blockchain.

## Project Description

The `MyToken` contract provides the following functionalities:

- **Minting:** Only the contract owner can mint new tokens.
- **Transferring:** Any user can transfer tokens using a custom transfer function.
- **Burning:** Any user can burn their own tokens.

### Custom Transfer Functionality

The custom transfer function allows users to transfer tokens from their account to another account, with additional checks to ensure that the sender has enough tokens to transfer.

```solidity
function transferToken(address _receiver, uint256 _value) external {
    require(balanceOf(msg.sender) >= _value, "Insufficient balance");
    _transfer(msg.sender, _receiver, _value);
}
```

### Features

1. **Only Owner Can Mint:** The `mint` function is restricted to the contract owner, ensuring that only the owner can increase the token supply.

   ```solidity
   function mint(address to, uint256 amount) public onlyOwner {
       _mint(to, amount);
   }
   ```

2. **Custom Transfer Function:** The `transferToken` function allows users to transfer tokens, incorporating a check to ensure the sender has a sufficient balance.

   ```solidity
   function transferToken(address _receiver, uint256 _value) external {
       require(balanceOf(msg.sender) >= _value, "Insufficient balance");
       _transfer(msg.sender, _receiver, _value);
   }
   ```

3. **Burn Function:** The `burn` function allows users to destroy their tokens, reducing the total supply.

   ```solidity
   function burn(uint256 amount) public {
       _burn(msg.sender, amount);
   }
   ```

### Error Handling

The contract uses `require` statements to handle errors like insufficient balance during transfers and minting by non-owners.

## Getting Started

### Prerequisites

To deploy and interact with this contract, you will need:

- [Remix IDE](https://remix.ethereum.org/)
- An Ethereum wallet (e.g., MetaMask)
- [Solidity](https://soliditylang.org/)



## Video Walkthrough

A video walkthrough explaining the code and the functionality of the contract can be found here: [Video Link]([https://yourvideolink.com](https://www.loom.com/share/8f5c13984bb5485eb887a70f4df022a1?sid=c6465e9a-f94c-489d-9cd1-12923345b021)).

## Conclusion

This project demonstrates the creation of an ERC-20 token with minting, burning, and custom transfer functionalities. The contract adheres to the ERC-20 standard while incorporating additional features to manage tokens effectively.
