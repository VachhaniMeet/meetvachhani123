//
//  main.swift
//  pro-12
//
//  Created by meet on 03/06/23.
//

/* WAP to take multiple value of type string into an array.*/

import Foundation

var arra=Array<Any>()

print("Enter number of data:")
var n = Int(readLine()!)!

for i in 0..<n
{
    print("Enter Your data:")
    let x = readLine()!
    arra.append(x)

}
print(arra)


