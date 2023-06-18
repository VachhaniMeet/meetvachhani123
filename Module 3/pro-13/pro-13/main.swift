//
//  main.swift
//  pro-13
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to use generics to swap two integer values.*/

import Foundation


func swap<T>(_ a: inout T,_ b: inout T)
{
    let temp = a
    a = b
    b = temp
}



var x = 50
var y = 25

print("Before Swap:x=\(x),y=\(y)")
swap(&x, &y)
print("After Swap:x=\(x),y=\(y)")



