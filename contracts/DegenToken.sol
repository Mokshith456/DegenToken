// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    string public Degenstore;

    constructor() ERC20("Degen", "DGN") {
        Degenstore = "In our official Degen store we have: 1. Official degen Notebook, 2. Official Degen keyboard mat, 3. Official Degen phone cover";
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeem(uint256 degen_no) public {
        require(degen_no >= 1 && degen_no <= 3, "Invalid redemption value");
        require(balanceOf(msg.sender) > 500, "Insufficient balance");
        _burn(msg.sender, (degen_no*250)+100);//additional 100 is tax
    }

    function fine(address to_address) public returns (string memory) {
        assert(balanceOf(msg.sender)>500);
        _transfer(to_address, msg.sender, 100);
        return "You have been charged a fine of 100 tokens for having excess(>500)tokens in your balance";
    }
}
