//
//  OnboardingItem.swift
//  KosuApp
//
//  Created by Sedat on 19.12.2022.
//

import UIKit

struct OnboardingItem {
    
    var heading: String
    var description: String
    
    var image: UIImage
    
    /// Returns the count of Onboarding Items for the app.
    static var count: Int {
        return onboardingItems.count
    }
    
    /// Returns the Onboarding Items for the app.
    static var onboardingItems: [OnboardingItem] {
        let item1 = OnboardingItem(heading: "Birinci Ekran", description: "aaaaaaaaaaa", image: #imageLiteral(resourceName: "parmakkasi"))
        let item2 = OnboardingItem(heading: "İkinci Ekran", description: "bbbbbbbbbbb", image: #imageLiteral(resourceName: "uyku"))
        let item3 = OnboardingItem(heading: "Üçüncü Ekran", description: "ccccccccccc", image: #imageLiteral(resourceName: "kategorikosufaydalari"))
        let item4 = OnboardingItem(heading: "Dördüncü Ekran", description: "ddddddddddd", image: #imageLiteral(resourceName: "peynir"))
        return [item1, item2, item3, item4]
    }
    
}
    
