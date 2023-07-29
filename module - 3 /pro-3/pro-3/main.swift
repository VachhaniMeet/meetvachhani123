//
//  main.swift
//  pro-3
//
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to check whether a string contains specific characters or not*/

import Foundation

print("Enter Your Name:")
var str=readLine()!

print("Enter the character:")
var a=readLine()!

var hii=str.contains(a)
if hii==true{
    print("\(a) is present in\"(str)\"")
}
else{
    print("not present in\"(str)\"")
}

