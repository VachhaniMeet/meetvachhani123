//
//  ViewController.swift
//  pro-7
//
//  Created by meet on 13/08/23.
//  Copyright © 2023 meet. All rights reserved.
//

/* Make an app to take three imageview and three button then pickup images from gallery and show image within particular image view.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn1(_ sender: Any)
    {
        let photo = UIImagePickerController()
              photo.delegate=self
              present(photo, animated: true, completion:nil)
        
    }
    
    @IBAction func btn2(_ sender: Any)
    {
        let photo1 = UIImagePickerController()
        photo1.delegate=self
        present(photo1, animated: true, completion:nil)
    }


    @IBAction func btn3(_ sender: Any)
    {
        let photo2 = UIImagePickerController()
        photo2.delegate=self
        present(photo2, animated: true, completion:nil)
    }
}
extension ViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickimage = info[.originalImage] as? UIImage{
            if image1.image == nil{
                image1.image = pickimage
            }else if image2.image == nil{
                image2.image = pickimage
            }else if image3.image == nil{
                image3.image = pickimage
            }
        }
        dismiss(animated: true, completion: nil)
    }
   
}





