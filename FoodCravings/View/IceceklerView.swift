//
//  IceceklerView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 6.10.2023.
//

import SwiftUI

struct IceceklerView: View {
    @ObservedObject var ViewModel = SepetViewModel.shared
    var restorant : Restorant
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]){
                ForEach(restorant.icecekler,id: \.id){i in
                    IceceklerCellView(icecek: i)
                }
            }
        }
    }
}

struct IceceklerView_Previews: PreviewProvider {
    static var previews: some View {
        IceceklerView(restorant: restoranlar[0])
    }
}
