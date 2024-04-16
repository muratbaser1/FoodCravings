//
//  favorimodelview.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import Foundation


class FavoriViewModel : ObservableObject {
    static let shared = FavoriViewModel()
    @Published var favoriListesi : [Restorant] = []
    
    func favoriEkle(restorant:Restorant) {
        favoriListesi.append(restorant)
        
    }
    func favoriCikar(restorant:Restorant) {
        favoriListesi.removeAll(where: {$0.id == restorant.id})
    }
}
