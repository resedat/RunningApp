//
//  VucutKitleVC.swift
//  KosuApp
//
//  Created by Sedat on 17.12.2022.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didHeightChange(_ sender: UISlider) {
        let formattedValue = String(format: "%.2f", heightSlider.value)
        label1.text = formattedValue
    }
    
    @IBAction func didWeightChange(_ sender: UISlider) {
        let formattedValue = String(format: "%.2f", weightSlider.value)
        label2.text =  formattedValue
    }

    @IBAction func didTapButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ResultVC {
            let bmi = (weightSlider.value / (heightSlider.value * heightSlider.value))
            let formatter = String(format: "%.1f", bmi)
            resultVC.index = formatter
            
            switch bmi {
                
            case (18.5...24.9):
                resultVC.labelForSuggestion = "Normal kilo. Sonucunuz mükemmel! Bu şekilde devam edin!"
                resultVC.view.backgroundColor = .green
            case (0...18.4):
                resultVC.labelForSuggestion = "Zayıfsın. Lütfen daha fazla turta ye!"
                resultVC.view.backgroundColor = .cyan
            case (25...29.9):
                resultVC.labelForSuggestion = "Kilolusun. Ooops! Daha az turta yemelisin!"
                resultVC.view.backgroundColor = .orange
            case (30...39.9):
                resultVC.labelForSuggestion = "Obezite. Daha az ye ve daha fazla spor yap!"
                resultVC.view.backgroundColor = .brown
            case (40...100):
                resultVC.labelForSuggestion = "Kritik Düzeyde Obezite!"
                resultVC.view.backgroundColor = .red
            default:
                resultVC.labelForSuggestion = "Some index"
            }
        }
    }
    
}
