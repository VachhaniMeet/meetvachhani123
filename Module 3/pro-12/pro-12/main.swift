//
//  main.swift
//  pro-12
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make a protocol with optional and required methods and use within a class.*/

import Foundation

protocol CustomProtocal
{
    var variable:String{get}
    func RequiredMethod()
    func optionalMethod()
    
}

class CustomClass: CustomProtocal
{
    func RequiredMethod()
    {
         print("This is Required Method")
    }
    func optionalMethod()
    {
       print("This is optional Method")
    }
    
    var variable: String
    
    init(variable:String)
    {
        self.variable=variable
    }
}

let object = CustomClass(variable: "Meet")

object.RequiredMethod()
object.optionalMethod()


