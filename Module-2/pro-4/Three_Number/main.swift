//
//  main.swift
//  Three_Number
//
//  Created by meet on 30/05/23.
//

/*WAP to find maximum value from three numbers.*/

import Foundation

print("Enter First Number:")
var num1 = Int(readLine()!)!
print(num1)

print("Enter Secound Number:")
var num2 = Int(readLine()!)!
print(num2)

print("Enter Third Number:")
var num3 = Int(readLine()!)!
print(num3)

var maximum=max(num1, num2, num3)
print("Maximum Number is:",maximum)
