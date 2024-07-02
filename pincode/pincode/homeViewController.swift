//
//  homeViewController.swift
//  pincode
//
//  Created by MAC2 on 10/04/1946 Saka.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var lbl_pin: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_pin.text = "By PIN"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentaction(_ sender: UISegmentedControl)
    {
        if (sender.selectedSegmentIndex == 0)
        {
            lbl_pin.text = "By Pin"
        }
        else if (sender.selectedSegmentIndex == 1)
        {
            lbl_pin.text = "Search By Area"
        }
        else if (sender.selectedSegmentIndex == 2)
        {
            lbl_pin.text = "Save Records"
        }
    }
    
    
    /*switch segment.selectedSegmentIndex
    {
    case 0:
        lbl_pin.text = "Quick search"
    
    case 1:
    
        lbl_pin.text = "Search By Area"
        
    case 2 :
        lbl_pin.text = "Save Records"
     
    default:
        break
}*/
}
