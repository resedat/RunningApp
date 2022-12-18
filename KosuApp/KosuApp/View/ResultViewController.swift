//
//  ResultViewController.swift
//  KosuApp
//
//  Created by Sedat on 17.12.2022.
//

import UIKit

class ResultViewController: UIViewController {

    var index: String?
    var labelForSuggestion: String?
    
    @IBOutlet weak var bmiIndex: UILabel!
    @IBOutlet weak var suggestion: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiIndex.text = index
        suggestion.text = labelForSuggestion
        
    }
    

   
    @IBAction func didTapRecalculate(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
