// SPDX-License-Identifier: UNLICENSED 

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";


pragma solidity ^0.8.20;

contract ReiTokenUpgradeable is Initializable, ERC20Upgradeable, OwnableUpgradeable {
    
    address public implementation;
    address public admin;
    uint public count;
    
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() initializer public {
        __ERC20_init("ReiTokenUpgradeable", "REI");
        __Ownable_init();
    }

    function increment() external {
         count += 1;
    }
// CAN ADD MORE FUNCTIONS HERE IN THE FUTURE (UPGRADEABLE CONTRACT)

}