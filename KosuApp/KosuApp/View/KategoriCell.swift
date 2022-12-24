//
//  KategoriCell.swift
//  KosuApp
//
//  Created by Sedat on 14.12.2022.
//

import UIKit

class KategoriCell: UITableViewCell {
    
    @IBOutlet weak var imgKategori: UIImageView!
    @IBOutlet weak var lblKategoriAdi: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgKategori.layer.cornerRadius = 20
        
    }
    
    func cellDuzenle(oneriKategori : OneriKategori){
        
        imgKategori.image = UIImage(named: oneriKategori.goruntuAdi)
        lblKategoriAdi.text = oneriKategori.kategoriAdi
        
    }

    
}
