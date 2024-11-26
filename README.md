# Metacrafters ETH + AVAX Proof: Intermediate EVM Course Assessment - Building on Avalanche

This Solidity program defines DegenToken, a custom ERC20 token built using OpenZeppelin's ERC20 and Ownable libraries. It demonstrates both standard and advanced ERC20 functionalities, providing users with token minting, burning, and transferring capabilities, as well as a utility for redeeming items. The contract was created as part of the Metacrafter's ETH + AVAX Proof: Intermediate EVM Course.

## Description

In this contract, users can manage their tokens by transferring and burning them, or redeem them for items in a preloaded catalog. The owner (deployer) of the contract has exclusive authority to mint new tokens, ensuring secure control of the token supply. Additionally, the contract includes interactive features that enhance user engagement, such as viewing items available for redemption and checking balances. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

* First, download the [DegenToken.sol](DegenToken.sol) file found in this repository.
* On the Remix website, click "Open a File from your File System" in the left-hand sidebar and open the file you've downloaded.
* To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version). Additionally, select the "shanghai" as the EVM version, and then click on the "Compile DegenToken.sol" button.
* Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyERCToken" contract from the dropdown menu, and then click on the "Deploy" button.
* After deploying, select "Injected Provider - MetaMask" as the environment. Make sure you have Metamask installed and the Fuji Test network configured.
* Then, you can interact with the functions as follows:
  * Mint Tokens: As the owner, call mint with the recipient address and amount.
  * Transfer Tokens: Token holders can call transferTokens to send tokens to another address.
  * Burn Tokens: Use burnTokens to burn a specified number of tokens.
  * Redeem Item: Call redeem with the item ID to exchange tokens for items in the catalog.
  * Show Items: Call showItems to view the list of redeemable items.


## Authors

[@noawhaha](https://github.com/noooooahh)
