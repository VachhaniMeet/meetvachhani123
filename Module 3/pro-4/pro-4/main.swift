//
//  main.swift
//  pro-4
//
//  Created by meet on 15/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to swap of two number using in-out parameters within function.*/

import Foundation

func number(a:inout Int,b: inout Int)
{
    let temp = a
    a = b
    b = temp
    
    
}

var num1=10
var num2 = 20

print("Before:num1=\(num1),num2=\(num2)")

number(a: &num1, b: &num2)

print("After:num1=\(num1),num2=\(num2)")




