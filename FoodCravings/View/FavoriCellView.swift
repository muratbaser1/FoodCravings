//
//  FavoriCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import SwiftUI

struct FavoriCellView: View {
    var restorant : Restorant
    @State private var isHeart = true
    @ObservedObject var ViewModel = FavoriViewModel.shared
    var body: some View {
        HStack{
            Image(restorant.resim)
                .resizable()
                .scaledToFit()
                .frame(width: 110,height: 110)
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "pin.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16,height: 16)
                    Text(restorant.restorant_adi)
                        .fontWeight(.bold)
                }
                Text(restorant.restorant_turu)
                    .foregroundColor(.black.opacity(0.6))
                Text(restorant.restorant_adres.prefix(23))
                    
            }
            .padding(.horizontal,5)
            Spacer()
            Button{
                // action
                
                ViewModel.favoriCikar(restorant: restorant)
                 

            }label: {
                Image(systemName: self.isHeart ? "heart.fill" : "")
            }
            .font(.system(size: 23))
            
        }.padding(.horizontal)
    }
}

struct FavoriCellView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriCellView(restorant: restoranlar[0])
    }
}
