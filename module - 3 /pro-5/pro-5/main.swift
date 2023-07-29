//
//  main.swift
//  pro-5
//
//  Copyright © 2023 meet. All rights reserved.
//

/*WAP to sort an array element using closure*/


import Foundation

var array:[Int] = [1,5,3,7,8,6,9,4]

var sorted = {
    (str:[Int]) -> [Int] in
    
    return str.sorted()
        
}
print("\(sorted(array))")





