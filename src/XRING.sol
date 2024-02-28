// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

contract XRING is ERC20, ERC20Burnable, Ownable2Step, ERC20Permit {
    constructor()
        ERC20("Darwinia Network xRING", "xRING")
        Ownable2Step()
        ERC20Permit("Darwinia Network xRING")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}