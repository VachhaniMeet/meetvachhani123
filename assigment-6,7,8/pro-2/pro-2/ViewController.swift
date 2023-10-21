//
//  ViewController.swift
//  pro-2
//
//  Created by meet on 09/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler([.sound, .badge, .alert])
        }
    

     let notification = UNUserNotificationCenter.current()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        notification.delegate = self
        
        notification.requestAuthorization(options: [.sound,.badge,.alert]) { sucess,error in
            if error == nil
            {
                print("sucessfully")
            }
            else
            {
              print("failed")
            }
             
        }
        
        func localnotification()
        {
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            let  content = UNMutableNotificationContent()
            content.title="hii"
            content.body="notification"
            content.sound=UNNotificationSound.default
            let identifire = UUID().uuidString
            let req = UNNotificationRequest(identifier: identifire, content: content, trigger: trigger)
            notification.add(req){error in
                if error == nil
                {
                    print("messege sent sucessfully")
                }
            }
            
            
        }
        
    }
   
}

