//
//  OneriViewController.swift
//  KosuApp
//
//  Created by Sedat on 14.12.2022.
//

import UIKit

class OneriVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var secilenKategoriAdi: String = ""
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return veriler.kategoriler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "kategoricell") as? KategoriCell {
            cell.cellDuzenle(oneriKategori: veriler.kategoriler[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenKategoriAdi = veriler.kategoriler[indexPath.row].kategoriAdi
        performSegue(withIdentifier: "onerilistesi", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let oneriListesiVC = segue.destination as? OneriListesiVC{
            oneriListesiVC.secilenKategoriAdi = secilenKategoriAdi
        }
    }
    
    
    var veriler = VeriSeti()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    


}
