//
//  Konum.swift
//  KosuApp
//
//  Created by Sedat on 24.11.2022.
//

import Foundation
import RealmSwift

class Konum : Object {
    @objc dynamic var latitude = 0.0
    @objc dynamic var longitude = 0.0
    
    
    convenience init (latitude: Double, longitude: Double) {
        self.init()
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
}
