//
//  sepetviewmodel.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 6.10.2023.
//

import Foundation



class SepetViewModel : ObservableObject {
    static let shared = SepetViewModel()
    @Published var sepetList : [Yemekler] = []
    func sepeteEkle(yemek : Yemekler) {
        if !sepetList.contains(where: {$0.id == yemek.id}) {
            sepetList.append(yemek)
        }
        
    }
    func sepetCikar(yemek : Yemekler) {
        sepetList.removeAll(where: {$0.id == yemek.id})
    }

}
