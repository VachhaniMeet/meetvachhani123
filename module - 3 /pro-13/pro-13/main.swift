//
//  main.swift
//  pro-13
//
//  Created by meet on 25/07/23.
//  Copyright © 2023 meet. All rights reserved.
//

/*WAP to use generics to swap two integer values. */

import Foundation

var temp = 0
print("enter the value of o:")
var o = Int(readLine()!)!

print("Enter the value of p:")
var p = Int(readLine()!)!

temp = o
o = p
p = temp

print("o:\(o) & p:\(p)")



