//
//  main.swift
//  pro-7
//
//  Created by meet on 15/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make class of bank account of person which should perform all banking operation using functions.*/

import Foundation

class bankAccount
{
    func xyz()
    {
    
        print("Enter Your Name:")
        name=readLine()!
        print("Enter Your Account Number:")
        accountnumber=Int(readLine()!)!
        print("Enter Your Account Type:(Saving/Current)")
        accounttype=readLine()!
        print("Your Balance is:",balace)
        
        
    }
        
}

var name:String=""
var accountnumber:Int = 0
var accounttype: String =  ""
var balace:Float = 1000.00

func deposit()
{
    print("can you deposit your money ? (y/n)")
    var x = readLine()!
    var yes = true
    
    if yes==true
    {
        print("Enter your Amount:")
        var a = Float(readLine()!)!
        print("deposit",balace + a)
    }

    else
    {
        print("Thanks.....")
    }
}

func withdrow()
{
    print("can you withdrow your mony?(y/n)")
    var z = readLine()!
    var no = true
    
    if no==true
    {
        print("Enter your Amount:")
        var b = Float(readLine()!)!
        print("deposit",balace - b)
    }

    else
    {
        print("Thanks.....")
    }
}
func print()
{
    print("Your Name:-",name)
    print("Your AccountNumber:-",accountnumber)
    print("Your AccountType:-",accounttype)
    print("Your Balance:-",balace)
}

var xz = bankAccount()
xz.xyz()
deposit()
withdrow()
print()










