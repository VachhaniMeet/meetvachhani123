//
//  main.swift
//  pro-9
//
//  Created by meet on 03/06/23.
//

/*WAP to make variable optional and requirements if variable have not value then it doesn't show an error.*/

import Foundation

class intro
{
    var firstName:String=""
    var lastName:String = ""
    
    func printPersoninfo()
    {
        print("Full Name: \(firstName) \(lastName)")
    }
}

let objintro = intro()
objintro.firstName="Vachhani"
objintro.lastName="Meet"
objintro.printPersoninfo()

