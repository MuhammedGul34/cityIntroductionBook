//
//  ViewController.swift
//  SehirTanıtımKitabı
//
//  Created by Muhammed Gül on 17.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Şehirler
        
        let istanbul = Sehir(isim: "İstanbul", bölge: "Marmara", resim: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "Ankara", bölge: "İç Anadalu", resim: UIImage(named: "ankara")!)
        let izmir = Sehir(isim: "İzmir", bölge: "Ege", resim: UIImage(named: "izmir")!)
        let diyarbakir = Sehir(isim: "Diyarbakır", bölge: "Güneydoğu Anadolu", resim: UIImage(named: "diyarbakır")!)
        let antalya = Sehir(isim: "Antalya", bölge: "Akdeniz", resim: UIImage(named: "antalya")!)
        
         sehirDizisi = [istanbul,ankara,izmir,diyarbakir,antalya]
    }
    
    //numberofrowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
     //cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         kullaniciSecimi = sehirDizisi[indexPath.row]
       performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }

}

