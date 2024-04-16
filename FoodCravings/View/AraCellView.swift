//
//  AraCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 12.10.2023.
//

import SwiftUI

struct AraCellView: View {
    var restorant : Restorant
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
                        .foregroundColor(.black)
                    Text(restorant.restorant_adi)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        
                }
                Text(restorant.restorant_turu)
                    .foregroundColor(.black.opacity(0.6))
                    
                Text(restorant.restorant_adres.prefix(23))
                    .foregroundColor(.black)
                    
            }
            .padding(.horizontal,5)
            Spacer()
            
        }.padding(.horizontal)
    }
}

struct AraCellView_Previews: PreviewProvider {
    static var previews: some View {
        AraCellView(restorant: restoranlar[0])
    }
}
