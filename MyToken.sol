// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("DoughCoin", "DOG") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function transferToken(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance");
        _transfer(msg.sender, _receiver, _value);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
