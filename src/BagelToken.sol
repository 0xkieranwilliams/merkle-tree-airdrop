// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/access/Ownable.sol";

contract BagelToken is ERC20, Ownable {
    constructor() ERC20("bagel", "BAGEL") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }
}
