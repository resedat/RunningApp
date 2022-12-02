//
//  KosuyaBaslaViewController.swift
//  KosuApp
//
//  Created by Sedat on 21.11.2022.
//

import UIKit
import MapKit
import RealmSwift

class KosuyaBaslaViewController: KonumViewController {
    
    
    @IBOutlet weak var lblMesafe: UILabel!
    @IBOutlet weak var lblSure: UILabel!
    @IBOutlet weak var lblTempo: UILabel!
    @IBOutlet weak var btnSonKosuKapat: UIButton!
    @IBOutlet weak var stackViewSonKosu: UIStackView!
    @IBOutlet weak var viewSonKosu: UIView!
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        izinKontrol()
        mapView.delegate = self

        print (Kosu.kosularinTumunuGetir())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self
        manager?.startUpdatingLocation()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        manager?.stopUpdatingLocation()
    }

    @IBAction func btnKonumMerkezPressed(_ sender: Any) {
        
        merkezKonumMapView()

    }
    
    func merkezKonumMapView(){
        
        mapView.userTrackingMode = .follow
        let bolgeKoordinat = MKCoordinateRegion(center: mapView.userLocation.coordinate, latitudinalMeters: 600, longitudinalMeters: 600)
        mapView.setRegion(bolgeKoordinat, animated: true)
        
    }
    
    func kosuBolgeKoordinatlari(konumlar : List<Konum>) -> MKCoordinateRegion {
        guard let baslangicKonum = konumlar.first else { return MKCoordinateRegion() }
        
        var minLat = baslangicKonum.latitude
        var maxLat = minLat
        
        var minLong = baslangicKonum.longitude
        var maxLong = minLong
        
        for konum in konumlar {
            minLat = min(minLat, konum.latitude)
            maxLat = max(maxLat, konum.latitude)
            
            minLong = min(minLong, konum.longitude)
            maxLong = max(maxLat, konum.longitude)
            
        }
        
        return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: (minLat + maxLat)/2, longitude: (minLong + maxLong)/2), span: MKCoordinateSpan(latitudeDelta: (maxLat - minLat)*1.5, longitudeDelta: (maxLong - minLong)*1.5))
        
    }
    
    @IBAction func btnSonKosuKapat(_ sender: Any) {
        
        stackViewSonKosu.isHidden = true
        viewSonKosu.isHidden = true
        btnSonKosuKapat.isHidden = true
        merkezKonumMapView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ayarlaMapView()
    }
    
    func sonKosuMapEkle() -> MKPolyline? {
        
        guard let sonKosu = Kosu.kosularinTumunuGetir()?.first else { return nil }
        
        
        lblMesafe.text = "Mesafe : \(String(format:"%.2f", sonKosu.mesafe/1000))"
        lblSure.text = "Süre : \(sonKosu.sure.saniyeSureCevir())"
        lblTempo.text = "Tempo : \(sonKosu.tempo.saniyeSureCevir())"
        
        var koordinatlar = [CLLocationCoordinate2D]()
        for konum in sonKosu.konumlar {
            koordinatlar.append(CLLocationCoordinate2D(latitude: konum.latitude, longitude: konum.longitude))
        }
        
        mapView.userTrackingMode = .none
        mapView.setRegion(kosuBolgeKoordinatlari(konumlar: sonKosu.konumlar), animated: true)
        
        return MKPolyline(coordinates: koordinatlar, count: koordinatlar.count)
        
    }
    
    func ayarlaMapView(){
        if let overlay = sonKosuMapEkle() {
            if mapView.overlays.count > 0 {
                mapView.removeOverlays(mapView.overlays)
            }
            
            mapView.addOverlay(overlay)
            stackViewSonKosu.isHidden = false
            viewSonKosu.isHidden = false
            btnSonKosuKapat.isHidden = false
        } else {
            stackViewSonKosu.isHidden = true
            viewSonKosu.isHidden = true
            btnSonKosuKapat.isHidden = true
            merkezKonumMapView()
        }
    }
    
    
}

extension KosuyaBaslaViewController : CLLocationManagerDelegate {
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        let polyline = overlay as! MKPolyline
        let renderer = MKPolylineRenderer(polyline: polyline)
        renderer.strokeColor = .red
        renderer.lineWidth = 6
        return renderer
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            izinKontrol()
            mapView.showsUserLocation = true
        }
    }
}
