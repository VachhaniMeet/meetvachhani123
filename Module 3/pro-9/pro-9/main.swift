//
//  main.swift
//  pro-9
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make three same function within two diff class using method overriding.*/

import Foundation

class Shape
{
    func draw()
    {
        print("drawing shape.....")
    }
    
}

class Circle:Shape
{
    override func draw()
    {
         print("drawing circle.....")
    }
}

class Square:Shape
{
    override func draw()
    {
         print("drawing square.....")
    }
}

let shape = Shape()
let circle = Circle()
let square = Square()

shape.draw()
circle.draw()
square.draw()



