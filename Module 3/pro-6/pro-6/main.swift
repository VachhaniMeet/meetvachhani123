//
//  main.swift
//  pro-6
//
//  Created by meet on 15/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to perform all arithmetic operation using function which might be menu driven.*/

import Foundation

func add(a:Double,b:Double) -> Double {
    return a+b
}
func sub(a:Double,b:Double) -> Double {
    return a-b
}
func multi(a:Double,b:Double) -> Double {
    return a*b
}
func div(a:Double,b:Double) -> Double {
    return a/b
}

print("Enter Your Number1:")
let num1=Int(readLine()!)!

print("Enter Your Number2:")
let num2=Int(readLine()!)!

print("Enter Your Choice:")
let choice=Int(readLine()!)!

switch choice
{
     case 1:
        print("add:\(num1+num2)")
     case 2:
        print("sub:\(num1-num2)")
     case 3:
        print("mul:\(num1*num2)")
     case 4:
        print("divi:\(num1/num2)")
    
     default:
    print("please try...agian")
    
}
