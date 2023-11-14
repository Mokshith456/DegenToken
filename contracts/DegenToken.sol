// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable , ERC20Burnable {
 string public Degenstore;
    constructor() ERC20("Degen", "DGN") {
        Degenstore = "In our official Degen store we have : 1.Official degen Notebook , 2.Official Degen keyboard mat , 3.Official Degen phone cover";
    }

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }
       function redeem(uint256 val) public {
        require(val>=1 && val<=3);
        require(balanceOf(msg.sender)>1000, "Insufficient balance");
            _burn((msg.sender),250);
       }
}
