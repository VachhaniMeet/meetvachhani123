//
//  ViewController.swift
//  pro-2
//
//  Created by MAC1 on 14/10/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        let annotation  = MKPointAnnotation()
        annotation.coordinate=CLLocationCoordinate2D(latitude: 22.27056147633533, longitude:70.81175247832412)
        annotation.title="Keshav Clinic"
        map.addAnnotation(annotation)
        
        
        let anno1  = MKPointAnnotation()
        anno1.coordinate=CLLocationCoordinate2D(latitude: 22.270050006070477, longitude:70.78885632481926)
        anno1.title="Malviya Nagar Police Station"
        map.addAnnotation(anno1)
        
        let anno2  = MKPointAnnotation()
        anno2.coordinate=CLLocationCoordinate2D(latitude: 22.27170806408236, longitude:70.78985410652747)
        anno2.title="Bajrang Restaurant"
        map.addAnnotation(anno2)
        
        let anno3  = MKPointAnnotation()
        anno3.coordinate=CLLocationCoordinate2D(latitude: 22.269176290949282, longitude:70.78852373091658)
        anno3.title="STATE BANK ATM"
        map.addAnnotation(anno3)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 50000, longitudinalMeters: 50000)
        map.setRegion(region, animated: true)
        
        
    }


}

