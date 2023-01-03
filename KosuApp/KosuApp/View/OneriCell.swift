//
//  OneriCell.swift
//  KosuApp
//
//  Created by Sedat on 14.12.2022.
//

import UIKit

class OneriCell: UICollectionViewCell {
    
    @IBOutlet weak var imgOneri: UIImageView!
    @IBOutlet weak var lblOneri: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgOneri.layer.cornerRadius = 10
    }
    
    func cellDuzenle(oneri: Oneri){
        imgOneri.image = UIImage(named: oneri.goruntuAdi)
        lblOneri.text = oneri.adi
    }
    
    
}
