//
//  MenuCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 6.10.2023.
//

import SwiftUI

struct MenuCellView: View {
    var yemek : Yemekler
    @ObservedObject var ViewModel = SepetViewModel.shared
    var body: some View {
        VStack{
            ZStack{
                Rectangle().fill(.white)
                    .frame(width: (UIScreen.main.bounds.width / 2) - 30,height: 190)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.4), radius: 0.5,x: 3,y: 3)
                Image(yemek.yemekresmi)
                    .resizable()
                    .frame(width: 130,height: 120)
                    .cornerRadius(20)
                    .offset(y:-25)
                Text(yemek.yemekadi.prefix(21))
                    .offset(y:50)
                    .lineLimit(1)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                Text("\(yemek.yemekfiyati) TL")
                    .offset(x:-40,y:74)
                ZStack{
                    Rectangle().fill(Color("ColorOrange"))
                        .frame(width: 25,height: 25)
                        .cornerRadius(10)
                    Button{
                        // sepete ekle
                        ViewModel.sepeteEkle(yemek: yemek)
                    }label: {
                        Image(systemName: "plus")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                .offset(x:60,y: 75)
            }
        }
       
    }
}

struct MenuCellView_Previews: PreviewProvider {
    static var previews: some View {
        MenuCellView(yemek: restoranlar[0].yemekler[0])
    }
}
