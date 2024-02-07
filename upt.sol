// SPDX-License-Identifier: MIT
// project UPT
// author tw
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract UPT is ERC20, Ownable {
    constructor() ERC20("Unify Platform Token", "UPT") {
        _mint(msg.sender, 1000000000 * 10 ** uint256(18));
    }

    function burn(uint256 _amount) external onlyOwner {
        _burn(msg.sender, _amount);
    }
}
