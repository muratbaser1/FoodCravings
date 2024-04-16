//
//  teklifmodel.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import Foundation


struct Teklif : Identifiable {
    var id : Int
    var indirim_baslik : String
    var indirim_aciklama : String
}

let teklifListesi : [Teklif] = [
    Teklif(id: 1, indirim_baslik: "%15 indirim", indirim_aciklama: "minimum 50 TL tutarındaki siparişlerde"),
    Teklif(id: 2, indirim_baslik: "%30 indirim", indirim_aciklama: "minimum 120 TL tutarındaki siparişlerde")
]
