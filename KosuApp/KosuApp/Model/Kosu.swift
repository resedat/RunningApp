//
//  Kosu.swift
//  KosuApp
//
//  Created by Sedat on 22.11.2022.
//

import Foundation
import RealmSwift

class Kosu : Object {
    
    @objc dynamic var id = ""
    @objc dynamic var tarih = NSDate()
    @objc dynamic var tempo = 0
    @objc dynamic var mesafe = 0.0
    @objc dynamic var sure = 0
    
    dynamic var konumlar = List<Konum>()
    
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    override static func indexedProperties() -> [String] {
        return ["tarih","sure","tempo"]
    }
    
    convenience init(tempo : Int, sure : Int, mesafe : Double, konumlar : List<Konum>) {
        self.init()
        self.id = UUID().uuidString.lowercased()
        self.tarih = NSDate()
        self.mesafe = mesafe
        self.tempo = tempo
        self.sure = sure
        self.konumlar = konumlar
    }
    
    static func kosuEkleRealm(sure : Int, mesafe : Double, tempo : Int, konumlar : List<Konum>){
        
        REALM_KUYRUK.sync {
        
        let kosu = Kosu(tempo: tempo, sure: sure, mesafe: mesafe, konumlar: konumlar)
        
        do{
            let realm = try Realm()
            try realm.write{
                realm.add(kosu)
                try realm.commitWrite()
                print("Veri Başarıyla Eklendi!")
            }
        }catch{
            print("Kosu Verileri Eklenirken Hata Meydana Geldi! : \(error.localizedDescription)")
        }
    }
    }
    
    
    static func kosularinTumunuGetir() -> Results<Kosu>? {
        
        do{
            let realm = try Realm()
            var kosular = realm.objects(Kosu.self)
            kosular = kosular.sorted(byKeyPath: "tarih", ascending: false)
            return kosular
            
        }catch{
            
            print("Kosulari Getirirken Hata Meydana Geldi! : \(error.localizedDescription)")
            return nil
        }
    }
    
    
    
}
