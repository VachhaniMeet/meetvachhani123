//
//  main.swift
//  pro-8
//
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make an employee class which properties should access through manager class.*/

import Foundation

class Employee
{
    var name:String = ""
    var salary:Int = 0
    var role:String = ""
    func data()
    {
        print("Enter Name:")
        name = readLine()!
        
        print("Enter salary:")
        salary = Int(readLine()!)!
        
        print("Enter role :")
        role = readLine()!
        
    }
    func printDetails()
    {
        print("Name:\(name)")
        print("Salary:\(salary)")
        print("Role:\(role)")
    }
    
}
class Manager: Employee
{
    var teamMember:Int = 0
    var bonus:Int = 0
    func teamdata()
    {
        print("Enter no of team member:")
        teamMember = Int(readLine()!)!
        print("Enter bonus:")
        bonus = Int(readLine()!)!
        
    }
    func mgdetails()
    {
        print("Team size:\(teamMember)")
        print("Bonuse:\(bonus)")
    }
        
}
var mg = Manager()
mg.data()
mg.teamdata()
mg.printDetails()
mg.mgdetails()



