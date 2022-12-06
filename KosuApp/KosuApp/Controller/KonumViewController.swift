//
//  KonumViewController.swift
//  KosuApp
//
//  Created by Sedat on 21.11.2022.
//

import UIKit
import MapKit

class KonumViewController: UIViewController, MKMapViewDelegate {
    
    var manager : CLLocationManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager = CLLocationManager()
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.activityType = .fitness
    }
    
    func izinKontrol(){
        
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            manager?.requestWhenInUseAuthorization()
        }
        
    }
    
    

}
