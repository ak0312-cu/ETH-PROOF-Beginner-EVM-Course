# FinalAssessmennt

This Solidity program defines a contract with public variables for name, abbreviation, and total supply, alongside an address-balances mapping. It includes functions for minting tokens to increase supply and sender balances, and burning tokens to decrease supply and sender balances with appropriate validations.

## Description

The Solidity program implements a token contract with public variables storing the token name, abbreviation, and total supply. It includes a mapping that associates addresses with token balances. The mint function accepts an address and value, increasing both the total token supply and the sender's total balance accordingly. Conversely, the burn function decreases the total supply and sender's balance upon receiving an address and value, ensuring the sender possesses sufficient tokens through conditional checks. These functionalities enable token creation and destruction while maintaining balance integrity within the blockchain based system.

## Getting Started

### Installing

* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

### Executing program

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FinalAssessment.sol). Copy and paste the following code into the file:

```javascript
pragma solidity 0.8.26;

contract MyToken {

    // public variables here
    string public tokenName = "AaKk";
    string public tokenAbbrv = "AK";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balance;

    // mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balance[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        if(balance[_address] >= _value){
            totalSupply -= _value;
            balance[_address] -= _value;
        }
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile FinalAssessment.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint & burn functions. Click on the "MyToken" contract in the left-hand sidebar. Then click on the "mint" function and enter the address and supply value to mint. Finally, click on the "transact" button to execute the function. Similarly, click on the "burn" function and enter the address and supply value to burn. Finally, click on the "transact" button to execute the function. You can check the balance by entering address in the balance mapping and click call.

## Authors

Contributors names and contact info

Amrutanshu Kar  
[@KarAmrutanshu](https://x.com/KarAmrutanshu)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
