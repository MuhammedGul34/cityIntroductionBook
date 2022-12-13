//
//  sehir.swift
//  SehirTanıtımKitabı
//
//  Created by Muhammed Gül on 17.10.2022.
//

import Foundation
import UIKit

class Sehir {
    
    var isim : String
    var bölge : String
    var resim : UIImage
    
    init(isim: String, bölge: String, resim: UIImage) {
        self.isim = isim
        self.bölge = bölge
        self.resim = resim
    }
}
