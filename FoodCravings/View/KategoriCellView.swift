//
//  KategoriCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI
/*
 .shadow(color: Color("ColorBlackTransparentDark"), radius: 12,x: 0,y: 8)
 */
struct KategoriCellView: View {
    var kategori : Kategori
    @State private var textWidth: CGFloat = 0
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(width: nil,height: 50)
                .shadow(color: Color.black.opacity(0.4), radius: 0.5,x: 2,y: 2)
                .padding(.vertical,5)
            Button{
                
            }label: {
                HStack{
                    Image(kategori.kategori_icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .cornerRadius(6)
                    Text(kategori.kategori_ad)
                        .font(.system(size: 18))
                        .lineLimit(1)
                        
                }
                .padding(.horizontal,7)
                .foregroundColor(.black)
            }
            
        }
        /*
         
         
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(width: 100,height: 50)
            .overlay(
                HStack{
                    Image(kategori.kategori_icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .cornerRadius(6)
                    Text(kategori.kategori_ad)
                        .font(.system(size: 18))
                        .lineLimit(1)
                        
                }
            )
        */
        
    }
}

struct KategoriCellView_Previews: PreviewProvider {
    static var previews: some View {
        KategoriCellView(kategori: kategoriListesi[0])
    }
}
