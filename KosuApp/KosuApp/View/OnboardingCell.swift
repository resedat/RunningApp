//
//  OnboardingCell.swift
//  KosuApp
//
//  Created by Sedat on 21.12.2022.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCell.self)
    
    
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    
    func setup(_ slide: OnboardingSlide){
        
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
        
    }
    
    
}
