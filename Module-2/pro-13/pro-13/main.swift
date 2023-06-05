//
//  main.swift
//  pro-13
//
//  Created by meet on 03/06/23.
//

/* WAP to take distinct value with tuples.*/

import Foundation
func finddistinctValues(in tuples:[(Int,Int)]) -> [Int]
{
    var distinctvalue = Set<Int>()
    
    for tuple in tuples
    {
        distinctvalue.insert(tuple.0)
        distinctvalue.insert(tuple.1)
    }
    return Array(distinctvalue)
    
}

let tuples = [(1,2),(2,3),(3,4),(4,5)]

let distinctvalue = finddistinctValues (in : tuples)

print(distinctvalue)



