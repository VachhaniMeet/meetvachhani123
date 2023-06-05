//
//  main.swift
//  pro-18
//
//  Created by meet on 04/06/23.
//

/* WAP to make an ingredients set then check any value may exist or not.*/

import Foundation

var product:Set<String>=["milk","drink","jam","sugar"]

let  searchvalue =  "drink"

if product.contains(searchvalue)
{
    print("\(searchvalue) as ingredients")
}
else
{
    print("\(searchvalue) Not Found")
}





