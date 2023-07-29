//
//  main.swift
//  pro-9
//
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make three same function within two diff class using method overriding.*/

import Foundation

class Object{
    
    var number1:Int = 0
    var number2:Int = 0
    
    func data()
    {
        print("Enter Number 1:")
        number1 = Int(readLine()!)!
        
        print("Enter Number 2:")
        number2 = Int(readLine()!)!
    }
    func Task()
    {
        var sum = number1 + number2
        print("Sum:\(sum)")
    }
    func otherTask()
    {
        var sum = number1 - number2
        print("Subtraction:\(sum)")
    }
        
}
class xyz :Object
{
    override func data(){
        print("Enter Number 1:")
        number1 = Int(readLine()!)!
        
        print("Enter Number 2:")
        number2 = Int(readLine()!)!
    }
    override func Task() {
        var sum = number1*number2
        print("Multiplication:\(sum)")
    }
    override func otherTask() {
        var sum = number1 / number2
        print("Division:\(sum)")
    }
}

var abc = xyz()
abc.data()
abc.Task()
abc.otherTask()


