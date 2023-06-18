//
//  main.swift
//  pro-5
//
//  Created by meet on 15/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/*WAP to sort an array element using closure */

import Foundation

let number = [5,4,3,2,1]

let sortnumber = number.sorted{ (a,b) -> Bool in
     return a < b
}

print(sortnumber)

