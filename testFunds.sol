// SPDX-License-Identifier: MIT
 pragma solidity >=0.8.2 <0.9.0;
 
 contract AccountPaymentSystem {
   address public owner;
    
    struct Account {
        uint id;
        uint balance;
        bool exists;
    }
    
    mapping(address => Account) private accounts;

    modifier onlyOwner() {
        require(msg.sender == owner,
        "Only owner is required to call this");
        _;
    }
    constructor() {
        owner = msg.sender;
    }
 function addAccount(address _addr, uint _id) public onlyOwner{
    Account storage account = accounts[_addr];
   // accounts[_addr].id = _id;
   account.id = _id;
    account.balance = 0;
    account.exists = true;
 }
//   function addAccount(address _accountAddress, uint _accountId) public onlyOwner {
//         // Add a new account with the given address and ID.
//         // Set the initial balance to 0 and 'exists' to true.
//     }


 function depositFunds(address _addr, uint _amount) public onlyOwner {
        // Deposit the given amount of funds to the account's balance.
        
        accounts[_addr].balance += _amount; 
        // Ensure the account exists before updating the balance.
        require(accounts[_addr].exists == true, "Account doesn't exist");
    }
function deductFunds(address _addr, uint _amount) public onlyOwner {
        // Deduct the given amount of funds from the account's balance.
        accounts[_addr].balance -= _amount;

        // Ensure the account exists and has enough balance for the deduction.
        require(accounts[_addr].exists == true, "Account does not exist");
        require(accounts[_addr].balance >= _amount, "Insufficient Balance");
    }
function getBalance(address _addr) public view returns (uint) {
        // Retrieve the balance of the account with the given address.

        // Return 0 if the account does not exist.
        if(accounts[_addr].exists == false ) {
            return 0;
        }
      return 
     accounts[_addr].balance;

    }

 }