// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    struct Item {
        string itemName;
        uint price;
    }

    mapping(uint => Item) public items;
    
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        items[0] = Item("1. DGN Coffee Mug", 20);
        items[1] = Item("2. DGN Mouse", 80);
        items[2] = Item("3. DGN Keyboard", 100);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferTokens(address _to, uint256 _amount) external {
        require(balanceOf(msg.sender) >= _amount, "Not enough tokens");
        approve(msg.sender, _amount);
        transferFrom(msg.sender, _to, _amount);
    }

    function redeem(uint256 _itemId) public {
        require(_itemId - 1 < 3, "Item does not exist.");
        require(balanceOf(msg.sender) >= items[_itemId - 1].price, "Insufficient balance to redeem");

        _burn(msg.sender, items[_itemId - 1].price);
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }
    
    function burnTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to burn");
        _burn(msg.sender, amount);
    }
    
    function showItems() public view returns (string[] memory) {
        string[] memory allItems = new string[](3);
        for (uint i = 0; i < 3; i++) {
            allItems[i] = items[i].itemName;
        }
        return allItems;
    }

}
