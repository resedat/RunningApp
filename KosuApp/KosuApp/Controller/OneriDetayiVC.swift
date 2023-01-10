//
//  OneriDetayiVC.swift
//  KosuApp
//
//  Created by Sedat on 14.12.2022.
//

import UIKit

class OneriDetayiVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgOneriGorsel: UIImageView!
    @IBOutlet weak var lblOneriAdi: UILabel!
    @IBOutlet weak var lblOneriDetayi: UITextView!
    
    var secilenOneri : Oneri!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let secilenOneri = secilenOneri{
            imgOneriGorsel.image = UIImage(named: secilenOneri.goruntuAdi)
            lblOneriAdi.text = secilenOneri.adi
            lblOneriDetayi.text = secilenOneri.detaylari
            
        }
        
    }
    override func viewDidLayoutSubviews() {
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: 400, height: 2300)
    }
}

