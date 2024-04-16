//
//  FavoriView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI

struct FavoriView: View {
    @ObservedObject var ViewModel = FavoriViewModel.shared
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                HStack{
                    Text("Favori Restorantlar")
                        .font(.system(size: 25))
                    Spacer()
                }
                .padding(.horizontal)
                LazyVGrid(columns: [GridItem(.flexible())]){
                    ForEach(ViewModel.favoriListesi,id: \.id){i in
                        FavoriCellView(restorant: i)
                    }
                }
                
            }.padding(.vertical,40)
        }

    }
}

struct FavoriView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriView()
    }
}
