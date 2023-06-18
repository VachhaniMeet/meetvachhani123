//
//  main.swift
//  pro-10
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make a structure to store ten bank account details.*/


import Foundation

struct BankAccount
{
    var accountNumber:String
    var accountHolderName:String
    var balance:Double
    
    init(accountNumber:String,accountHolderName:String,balance:Double)
    {
        self.accountNumber=accountNumber
        self.accountHolderName=accountHolderName
        self.balance=balance
    }
}

var bankaccounts:[BankAccount]=[]

bankaccounts.append(BankAccount(accountNumber: "1", accountHolderName: "Meet", balance: 5000.0))
bankaccounts.append(BankAccount(accountNumber: "2", accountHolderName: "Ram", balance: 10000.0))
bankaccounts.append(BankAccount(accountNumber: "3", accountHolderName: "Raj", balance: 15000.0))
bankaccounts.append(BankAccount(accountNumber: "4", accountHolderName: "Jay", balance: 25000.0))
bankaccounts.append(BankAccount(accountNumber: "5", accountHolderName: "Keyur", balance: 30000.0))
bankaccounts.append(BankAccount(accountNumber: "6", accountHolderName: "ajay", balance: 35000.0))
bankaccounts.append(BankAccount(accountNumber: "7", accountHolderName: "Kishan", balance: 40000.0))
bankaccounts.append(BankAccount(accountNumber: "8", accountHolderName: "Nirav", balance: 45000.0))
bankaccounts.append(BankAccount(accountNumber: "9", accountHolderName: "Abhi", balance: 50000.0))
bankaccounts.append(BankAccount(accountNumber: "10", accountHolderName: "Vishal", balance: 55000.0))


let firstAccount = bankaccounts[9]
print("Accountn Holder Name:\(firstAccount.accountHolderName)")
print("Account Balance:\(firstAccount.balance)")


bankaccounts[1].balance+=5000.0
print("Update Balance:\(bankaccounts[7].balance)")






