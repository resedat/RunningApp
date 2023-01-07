//
//  OnboardingVC.swift
//  KosuApp
//
//  Created by Sedat on 21.12.2022.
//

import UIKit

class OnboardingVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    
    var slides: [OnboardingSlide] = []
    var currentPage = 0 {
        didSet{
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextBtn.setTitle("Get Started", for: .normal)
            } else{
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            OnboardingSlide(title: "Koşunun Tadını Çıkar!", description: "Bu uygulama ile koşu ve egzersiz planı artık daha kolay!", image: #imageLiteral(resourceName: "sevinc2")),
            OnboardingSlide(title: "Haritadan Verilerini Gör!", description: "Haritada son koşuda geçtiğin lokasyonlar kırmızı renkle çizilerek sana gösteriliyor!", image: #imageLiteral(resourceName: "map3")),
            OnboardingSlide(title: "Bisiklet ve Diğer Taşıtlar İçin De Uygun!", description: "Koş veya herhangi bir taşıtla başlat. Başlangıç ve bitiş noktaları arasında süren, tempon ve uzaklığın hesaplanıyor!", image: #imageLiteral(resourceName: "woman2")),
            OnboardingSlide(title: "Sana Verilen Önerilere Uy ve Başarıyı Yakala!", description: "Beslenme önerileri, koşu ile ilgili temel bilgiler ve daha fazla öneri seni bekliyor. Haydi başlayalım!", image: #imageLiteral(resourceName: "cak1"))
        ]
        pageControl.numberOfPages = slides.count
    }
    
   
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "homeVC") as! UITabBarController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
        
    }
    
}

extension OnboardingVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCell.identifier, for: indexPath) as! OnboardingCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        
    }
    
    
    
}
