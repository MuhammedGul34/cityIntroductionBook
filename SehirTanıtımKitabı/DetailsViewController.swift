//
//  DetailsViewController.swift
//  SehirTanıtımKitabı
//
//  Created by Muhammed Gül on 17.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirİsmiLabel: UILabel!
    @IBOutlet weak var sehirBölgesiLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirİsmiLabel.text = secilenSehir?.isim
        sehirBölgesiLabel.text = secilenSehir?.bölge
        imageView.image = secilenSehir?.resim
    }
    


}
