//
//  main.swift
//  pro-12
//
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make a protocol with optional and required methods and use within a class.*/

import Foundation

protocol myprotocal
{
}
extension myprotocal{
    func opmethod()
    {
        print("this is optional method is not implemented")
    }
}
    class Customclass: myprotocal
    {
        func requirement()
        {
            print("Required method id called")
        }
    }
let object = Customclass()
object.requirement()
object.opmethod()




