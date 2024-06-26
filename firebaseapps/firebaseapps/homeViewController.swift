//
//  homeViewController.swift
//  firebaseapps
//
//  Created by MAC2 on 06/04/1946 Saka.
//

import UIKit
import FirebaseFirestore

class homeViewController: UIViewController,UITextFieldDelegate {
    let database = Firestore.firestore()
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let field: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Text"
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.blue.cgColor
        return field
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        view.addSubview(field)
        field.delegate = self
        
        let docRef = database.document("ios/firebase")
        docRef.addSnapshotListener{[weak self]snapshot,error in
            guard let data = snapshot?.data(),error == nil else{
                return
            }
            guard let text = data["text"] as? String else {
                return
            }
            DispatchQueue.main.async {
                self?.label.text = text
            }
        }
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        field.frame = CGRect(x: 10, y: view.safeAreaInsets.top+10, width: view.frame.size.width-20, height: 50)
        label.frame = CGRect(x: 10, y: view.safeAreaInsets.top+10+60, width: view.frame.size.width-20, height: 100)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,!text.isEmpty{
           saveData(text: text)
        }
        return true
    }
    func saveData(text:String)
    {
        let docRef = database.document("ios/firebase")
        docRef.setData(["text":text])
        
    }

   

}
