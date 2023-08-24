# projectTestFunds
# Account Payment System Smart Contract

This is a simple Ethereum smart contract named `AccountPaymentSystem` that provides basic functionalities for managing accounts and performing fund-related operations. The contract allows the owner to add accounts, deposit funds, deduct funds, and check account balances.

## Functions

### `addAccount`

This function allows the contract owner to add a new account.

Inputs:
- `_addr` (address): The Ethereum address of the account.
- `_id` (uint): The identifier of the account.

### `depositFunds`

This function allows the contract owner to deposit funds into an account.

Inputs:
- `_addr` (address): The Ethereum address of the account.
- `_amount` (uint): The amount of funds to deposit.

### `deductFunds`

This function allows the contract owner to deduct funds from an account.

Inputs:
- `_addr` (address): The Ethereum address of the account.
- `_amount` (uint): The amount of funds to deduct.

### `getBalance`

This function allows anyone to retrieve the balance of an account.

Inputs:
- `_addr` (address): The Ethereum address of the account.

Outputs:
- Returns the account balance (uint).

