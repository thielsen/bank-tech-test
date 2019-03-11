# Tech test - Bank

## Summary

This is a tech test at Makers Academy, week 11. The goal is to create a simple bank application allowing deposit, withdrawal and printing to the specifications below.

## User stories

```
As a bank customer
So I can add to me account
I want to be able to deposit money
```

```
As a bank customer
So I can spend my money
I want to be able to withdraw money
```

```
As a bank customer
So I can see how much money I have
I want to be able to print a statement
```

```
As a bank customer
So I have the details of my account
I want my statement to show date, amount and balance
```

## Design

- Account Class - Stores all transactions for an account
                - Allows a debit or credit to be raised against the account. This creates a transaction and adds it to the transaction list.
- Transaction Class - Stores details of an individual transaction
                    - Is called by the account when a new transaction is needed.
- Statement Class - Manages the printing of the statement of a given account
                  - Can be passed an account as an argument which it can itreate through to generate a statement.

## Installation

Clone this repository
```
bundle install
rspec #Check all tests green
irb #Run the app from IRB
```

## Sample use

```
2.5.1 :001 > require './account'
 => true
2.5.1 :002 > require './statement'
 => true
2.5.1 :003 > require './transaction'
 => true
2.5.1 :004 > account = Account.new
 => #<Account:0x00007fae0c8a2750 @transactions=[]>
2.5.1 :005 > account.credit(10.00)
 => [#<Transaction:0x00007fae0c879ee0 @date="03/11/2019", @debit=0, @credit=10.0>]
2.5.1 :006 > account.credit(10.00)
 => [#<Transaction:0x00007fae0c879ee0 @date="03/11/2019", @debit=0, @credit=10.0>, #<Transaction:0x00007fae0c882248 @date="03/11/2019", @debit=0, @credit=10.0>]
2.5.1 :007 > account.debit(5.00)
 => [#<Transaction:0x00007fae0c879ee0 @date="03/11/2019", @debit=0, @credit=10.0>, #<Transaction:0x00007fae0c882248 @date="03/11/2019", @debit=0, @credit=10.0>, #<Transaction:0x00007fae0c8765d8 @date="03/11/2019", @debit=5.0, @credit=0>]
2.5.1 :008 > statement = Statement.new
 => #<Statement:0x00007fae0b0802a8>
2.5.1 :009 > statement.printout(account)
 => "   DATE       ||   CREDIT   ||   DEBIT   ||   BALANCE   \n  03/11/2019  ||      10.00||          0.00||    10.00\n  03/11/2019  ||      10.00||          0.00||    20.00\n  03/11/2019  ||      0.00||          5.00||    15.00\n"
2.5.1 :011 >
```

=========================
Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Specification

Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00