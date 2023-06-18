//
//  main.swift
//  pro-11
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make a protocol for variables which should be used in
class. */

import Foundation

protocol Variable
{
    
    var name:String{get set}
    var number:Int{get}
}
    
    class CustomClass: Variable
    {
        var name = "Meet"
        var number = 1
        
        func data()
        {
            print("Name:",name)
            print("Number:",number)
        }
   }

var st = CustomClass()
st.data()




