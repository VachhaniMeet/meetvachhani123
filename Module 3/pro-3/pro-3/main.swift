//
//  main.swift
//  pro-3
//
//  Created by meet on 15/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to check whether a string contains specific characters or not */

import Foundation

func contain(string:String,character:String) -> Bool
{
    for char in character
    {
        if string.contains(char) {
            return true
        }
    }
    return false
    
}


let message = "This is IOS programing"
let charater = "258"


let char = contain(string: message,character:charater)
print(char)




