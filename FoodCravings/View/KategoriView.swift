//
//  KategoriView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI

struct KategoriView: View {
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: [GridItem(.flexible())]){
                ForEach(kategoriListesi,id: \.id){i in
                    KategoriCellView(kategori: i).padding(.horizontal,3)
                }
            }
        }
    }
}

struct KategoriView_Previews: PreviewProvider {
    static var previews: some View {
        KategoriView()
    }
}
