//
//  main.swift
//  pro-8
//
//  Created by meet on 16/06/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* WAP to make an employee class which properties should access through manager class.*/

import Foundation

class Employee
{
    
       var name:String
       var designation:String
       var salary : Double
    
    init(name:String,designation:String,salary:Double)
    {
        self.name=name
        self.designation=designation
        self.salary=salary
    }
    
}

class Manager
{
    var employee : Employee
    
    init(employee:Employee)
    {
        self.employee=employee
    }
    
    func getEmployeeName () ->String
    {
        return employee.name
                
    }
    
    func getEmployeeDesignation () ->String
    {
        return employee.designation
                
    }
    
    func getEmployeeSalary() -> Double {
        return employee.salary
    }
    
    func setEmployeeSalary (newsalary:Double)
       {
           employee.salary=newsalary
                   
       }
    
}

let employee = Employee(name: "Meet", designation: "IOS Devloper", salary: 20000.0)
let manager = Manager(employee:employee)

print("employee name: \(manager.getEmployeeName())")
print("emolpyee designation: \(manager.getEmployeeDesignation())")
print("emolpyee salary: \(manager.getEmployeeSalary())")

manager.setEmployeeSalary(newsalary:15000)
print("update salary: \(manager.getEmployeeSalary())")

