//
//  model.swift
//  Coredataapps
//
//  Created by meet on 20/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import Foundation
import CoreData

class DMLmodel
{
    
     let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveinfo(data:[String:Any])
    {
        let savedata = NSEntityDescription.insertNewObject(forEntityName: "info", into: context ) as! Info
        savedata=data["name"] as? String
        savedata=data["sub"] as? String
        savedata=data["city"] as? String
    }
    
    func showalldata () -> [Info]
    {
        var data = [Info]()
        let  req = NSFetchRequest<NSFetchRequestResult>.init(entityName: "info")
        do
        {
            data=try! context.fetch(req) as! [Info]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return data
        }
     func deletedata(index:Int)->[Info]
     {
         var stdata=showalldata()
         context.delete(stdata[index])
         stdata.remove(at: index)
         try? context.save()
         return stdata
     }
}
