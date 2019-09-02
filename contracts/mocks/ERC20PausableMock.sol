pragma solidity ^0.5.0;

import "../token/ERC20/ERC20Pausable.sol";
import "./PauserRoleMock.sol";

// mock class using ERC20Pausable
contract ERC20PausableMock is ERC20Pausable, PauserRoleMock {
    constructor (address initialAccount, uint initialBalance) public {
        ERC20Pausable.initialize(_msgSender());
        _mint(initialAccount, initialBalance);
    }
}
