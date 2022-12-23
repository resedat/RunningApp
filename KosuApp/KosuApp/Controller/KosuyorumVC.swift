//
//  KosuyorumViewController.swift
//  KosuApp
//
//  Created by Sedat on 21.11.2022.
//

import UIKit
import MapKit
import RealmSwift

class KosuyorumVC: KonumVC {

    @IBOutlet weak var imgKosuOutline: UIImageView!
    @IBOutlet weak var btnKosuBitir: UIButton!
    @IBOutlet weak var lblSure: UILabel!
    @IBOutlet weak var lblTempo: UILabel!
    @IBOutlet weak var lblUzaklik: UILabel!
    @IBOutlet weak var btnDurdur: UIButton!
    
    
    var kosuMesafesi : Double = 0.0
    var ilkKonum : CLLocation!
    var sonKonum : CLLocation!
    
    var sayac : Int = 0
    var timer = Timer()
    
    var tempo = 0
    
    var konumlar = List<Konum>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeGesture = UIPanGestureRecognizer(target: self, action: #selector(kosuyuBitir(sender:)))
        btnKosuBitir.addGestureRecognizer(swipeGesture)
        btnKosuBitir.isUserInteractionEnabled = true
        swipeGesture.delegate = self as? UIGestureRecognizerDelegate
        
    }
    @objc func kosuyuBitir(sender: UIPanGestureRecognizer){
        
        let minFark : CGFloat = 80
        let maxFark : CGFloat = 157
        
        if let sliderview = sender.view {
            
            if sender.state == UIGestureRecognizer.State.began || sender.state == UIGestureRecognizer.State.changed {
                
                let translation = sender.translation(in: self.view)
                
                if sliderview.center.x >= (imgKosuOutline.center.x - minFark) && sliderview.center.x <= (imgKosuOutline.center.x + maxFark) {
                    sliderview.center = CGPoint(x: sliderview.center.x + translation.x, y: sliderview.center.y)
                }
                else if sliderview.center.x >= (imgKosuOutline.center.x + maxFark){
                    sliderview.center.x = imgKosuOutline.center.x + maxFark
                    kosmaBitir()
                    dismiss(animated: true, completion: nil)
                } else {
                    sliderview.center.x = imgKosuOutline.center.x - minFark
                }
                sender.setTranslation(CGPoint.zero, in: self.view)
                
            }
            
            else if sender.state == UIGestureRecognizer.State.ended {
                UIView.animate(withDuration: 0.2, animations: {
                    sliderview.center.x = self.imgKosuOutline.center.x - minFark
                })
            }
        }
        
    }
    
    
    @IBAction func btnDurdurPressed(_ sender: Any) {
        if timer.isValid {
            kosmaDurdur()
        }else {
            kosmaBaslat()
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self
        manager?.distanceFilter = 10
        kosmaBaslat()
    }
    
    
    func kosmaBaslat(){
        manager?.startUpdatingLocation()
        zamanlayiciBaslat()
        btnDurdur.setImage(UIImage(named: "durdurButonu.png"), for: .normal)
    }
    func kosmaBitir(){
        manager?.stopUpdatingLocation()
        Kosu.kosuEkleRealm(sure: sayac, mesafe: kosuMesafesi, tempo: tempo, konumlar: konumlar)
    }
    func zamanlayiciBaslat(){
        lblSure.text = sayac.saniyeSureCevir()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(sayaciGuncelle), userInfo: nil, repeats: true)
    }
    @objc func sayaciGuncelle(){
        sayac = sayac + 1
        lblSure.text = sayac.saniyeSureCevir()
    }
    
    func tempoHesapla(sure saniye : Int, km : Double) -> String {
        tempo = Int(Double(saniye) / km)
        return tempo.saniyeSureCevir()
    }
    
    func kosmaDurdur(){
        ilkKonum = nil
        sonKonum = nil
        timer.invalidate()
        manager?.stopUpdatingLocation()
        btnDurdur.setImage(UIImage(named: "devamButonu.png"), for: .normal)
    }

}

extension KosuyorumVC : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            izinKontrol()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // mesafe hesaplanacak
        
        if ilkKonum == nil {
            ilkKonum = locations.first
        }else if let konum = locations.last {
            kosuMesafesi += sonKonum.distance(from: konum)
            
            let yeniKonum = Konum(latitude: Double(sonKonum.coordinate.latitude), longitude: Double(sonKonum.coordinate.longitude))
            konumlar.insert(yeniKonum, at: 0)
            
            let stringMesafe = String(format: "%.3f", kosuMesafesi/1000)
            lblUzaklik.text = "\(stringMesafe)"
            
            if sayac > 0 && kosuMesafesi > 0 {
                lblTempo.text = tempoHesapla(sure: sayac, km: kosuMesafesi/1000)
            }
        }
        
        sonKonum = locations.last
        
    }
    
    
    
}
