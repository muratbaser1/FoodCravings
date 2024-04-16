//
//  sepetmodel.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 7.10.2023.
//

import Foundation

struct SepetModel : Identifiable{
    var id = UUID()
    var isim : String
    var resim : String
    var fiyat : Int
}
