//
//  model.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 3.10.2023.
//

import Foundation
struct Restorant : Identifiable,Codable {
    var id : Int
    var restorant_adi : String
    var restorant_adres : String
    var restorant_turu : String
    var resim : String
    var yemekler : [Yemekler]
    var icecekler : [Icecekler]
}
struct Yemekler : Codable {
    var id : Int
    var yemekadi : String
    var yemekfiyati : Int
    var yemekresmi : String
    
}
struct Icecekler : Codable {
    var id : String
    var icecekadi : String
    var icecekresim : String
    var icecekfiyati : Int
}


extension Bundle {
    func decoder<T:Codable>(_ file:String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("error")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("error")
        }
        let dec = JSONDecoder()
        guard let decoderData = try? dec.decode(T.self, from: data) else {
            fatalError("error")
        }
        return decoderData
    }
}

let restoranlar : [Restorant] = Bundle.main.decoder("restorantlar2.json")


