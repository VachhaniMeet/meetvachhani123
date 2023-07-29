//
//  main.swift
//  pro-7
//
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make class of bank account of person which should perform all banking operation using functions. */

import Foundation

class bank
{
    var balance:Int = 0
    func enterbalance()
    {
        
        print("enter the balance:")
        balance = Int(readLine()!)!
    }
  func widrow()
        {
    print("enter the widrow amount")
  let amount = Int(readLine()!)!
     balance = balance - amount
            
    print("totle amount is  \(balance)")
          
        }
          func deposit()
          {
        
        print("enter the deposit amount :")
        let amount = Int(readLine()!)!
         balance = balance + amount
              
              print("totle balance : is \(balance)")
    }
    
}

var xy = bank()
xy.enterbalance()
print("Enter 'yes' : to withdraw & 'no' : to deposit")
var ab = readLine()!
if ab == "yes"
{
    xy.widrow()
}
else if ab == "no"
{
    xy.deposit()
}
else
{
    print("error")
}
          

