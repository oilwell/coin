pragma solidity ^0.5.0;

import "./ownership/Ownable.sol";
import "./token/ERC20/ERC20.sol";
import "./token/ERC20/ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract OILDToken is ERC20, ERC20Detailed, Ownable {
    uint8 public constant DECIMALS = 0;
    uint256 public constant INITIAL_SUPPLY = 16 * (10 ** 6) * (10 ** uint256(DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Oil Discount", "OILD", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
