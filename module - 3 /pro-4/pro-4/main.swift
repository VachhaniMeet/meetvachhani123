//
//  main.swift
//  pro-4
//
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to swap of two number using in-out parameters within function.*/

import Foundation

func root(no1:Int,no2:Int)
{
    var  a = no1 , b = no2
    
    a=b
    b=a
    
    print("value of a is \(a) & b is \(b)")
    
}

var a:Int,b:Int

print("enter the value of a:")
a = Int(readLine()!)!

print("enter the value of b:")
b = Int(readLine()!)!

root(no1: a, no2: b)


