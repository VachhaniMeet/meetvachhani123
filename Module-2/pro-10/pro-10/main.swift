//
//  main.swift
//  pro-10
//
//  Created by meet on 03/06/23.
//

/*WAP to find maximum number from four variables using conditional (?) operator.*/

import Foundation

let a = 22
let b = 55
let c = 88
let d = 50

let max = (a>b) ? (a>c) ? (a>d) ? a : d : (c>d) ? c : d : (b>c) ? (b>d) ? b : d : (c>d) ? c : d

print("The maximum number is \(max)")








