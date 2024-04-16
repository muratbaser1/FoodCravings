//
//  kategorimodel.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import Foundation


struct Kategori : Identifiable {
    var id : Int
    var kategori_ad : String
    var kategori_icon : String
}


let kategoriListesi : [Kategori] = [

    Kategori(id: 1, kategori_ad: "Pizza", kategori_icon: "iconpizza"),
    Kategori(id: 2, kategori_ad: "Hamburger", kategori_icon: "iconburger"),
    Kategori(id: 3, kategori_ad: "Kebap", kategori_icon: "iconkebap"),
    Kategori(id: 4, kategori_ad: "Tost", kategori_icon: "icontost")
]
