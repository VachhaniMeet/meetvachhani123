//
//  main.swift
//  pro-1
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to modify value from specific position from an array.*/

import Foundation

var numbers = [1,2,3,4,5]

func array(at position:Int,newValue:Int,array:inout [Int])
{
    guard position >= 0 && position < array.count
    else
    {
    print("invalid")
    return
}
    array[position] = newValue

}

array(at: 2, newValue: 7,array: &numbers)

print(numbers)
