//
//  main.swift
//  pro-2
//
//  Created by meet on 15/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to take two key like. Colors, digits and value should be an array then get that specific value from array.*/

import Foundation


let data = [
    "Color": ["blue","yellow","red"],
    "Number": [1,2,3,4,5]
    
]

func value(forKey key:String,position:Int) -> Any? {
    guard let array=data[key] as? [Any],position>=0 && position < array.count
        else {
            return nil
            
           }
     return array[position]
}

let colorArray = data["color"] as? [String]
let numberArray = data["number"] as? [Int]

if let color = colorArray?[1]{
    print("Color position 1: \(color)")
    
}

if let number = numberArray?[3]{
    print("Number position 1: \(number)")
    
}

