//
//  main.swift
//  pro-15
//
//  Created by meet on 04/06/23.
//

/* WAP to make array of dictionaries and get a value from specific dictionaries.*/

import Foundation

var ArrayofDistionaries =
[
    ["Name":"Meet","age":20],
    ["Name":"Hardik","age":25],
    ["Name":"Ram","age":27],

]

if let dictionary=ArrayofDistionaries.first(where:{$0["Name"]as? String=="Ram"}),
   let age=dictionary["age"] as? Int
{
    print("Ram age is: \(age)")
}
else
{
    print("Ram no information found")
}
   


