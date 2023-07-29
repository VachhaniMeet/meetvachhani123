//
//  main.swift
//  pro-6
//
//  Copyright © 2023 meet. All rights reserved.
//

/*  WAP to perform all arithmetic operation using function which might be menu driven.*/

import Foundation

func add(a:Int,b:Int) -> Int {
    return a+b
}
func sub(a:Int,b:Int) -> Int {
    return a-b
}
func multi(a:Int,b:Int) -> Int {
    return a*b
}
func div(a:Float,b:Float) -> Float {
    return a/b
}
func modulo(a:Int,b:Int) -> Int{
    return a%b
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
     case 5:
        print("mod:\(num1%num2)")
    
    
     default:
    print("please try...agian")
    
}


