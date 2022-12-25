//
//  OneriListesiVC.swift
//  KosuApp
//
//  Created by Sedat on 14.12.2022.
//

import UIKit

class OneriListesiVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var secilenKategoriAdi: String = ""
    @IBOutlet weak var collectionView: UICollectionView!
    var veriler = VeriSeti()
    var secilenOneri : Oneri!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self

        print(secilenKategoriAdi)
 
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        veriler.onerileriGetir(kategori: secilenKategoriAdi).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let oneriCell = collectionView.dequeueReusableCell(withReuseIdentifier: "onericell", for: indexPath) as? OneriCell{
            
            oneriCell.cellDuzenle(oneri: veriler.onerileriGetir(kategori: secilenKategoriAdi)[indexPath.row])
            
            return oneriCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let genislik = view.bounds.width
        let hucreBoyutu = (genislik / 2) - 15
        return CGSize(width: hucreBoyutu, height: hucreBoyutu)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        secilenOneri = veriler.onerileriGetir(kategori: secilenKategoriAdi)[indexPath.row]
        performSegue(withIdentifier: "oneridetayi", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let oneriDetayiVC = segue.destination as? OneriDetayiVC{
            oneriDetayiVC.secilenOneri = secilenOneri
        }
        
    }
    
    
}
