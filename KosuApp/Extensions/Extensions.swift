//
//  Extensions.swift
//  KosuApp
//
//  Created by Sedat on 22.11.2022.
//

import Foundation

extension Int {
    func saniyeSureCevir() -> String {
        
        let saat = self / 3600
        let dakika = (self % 3600) / 60
        let saniye = (self % 3600) % 60
        
        
        if saniye < 0 {
            return "00:00:00"
        }else {
            if saat == 0 {
                return String (format: "%02d:%02d",dakika,saniye)
            }else {
                return String (format: "%02d:%02d:%02d",saat,dakika,saniye)
            }
        }
    }
}


extension NSDate {
    
    func tarihGetir() -> String {
        let takvim = Calendar.current
        let gun = takvim.component(.day, from: self as Date)
        let ay = takvim.component(.month, from: self as Date)
        let yil = takvim.component(.year, from: self as Date)
        
        return "\(gun)/\(ay)/\(yil)"
    }
    
    
}
