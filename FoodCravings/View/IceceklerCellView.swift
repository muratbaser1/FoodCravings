//
//  IceceklerCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 10.10.2023.
//

import SwiftUI

struct IceceklerCellView: View {
    var icecek : Icecekler
    var body: some View {
        VStack{
            ZStack{
                Rectangle().fill(.white)
                    .frame(width: (UIScreen.main.bounds.width / 2) - 30,height: 190)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.4), radius: 0.5,x: 3,y: 3)
                Image(icecek.icecekresim)
                    .resizable()
                    .frame(width: 130,height: 120)
                    .cornerRadius(20)
                    .offset(y:-25)
                Text(icecek.icecekadi.prefix(21))
                    .offset(y:50)
                    .lineLimit(1)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                Text("\(icecek.icecekfiyati) TL")
                    .offset(x:-40,y:74)
                ZStack{
                    Rectangle().fill(Color("ColorOrange"))
                        .frame(width: 25,height: 25)
                        .cornerRadius(10)
                    Button{
                        // sepete ekle

                        
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

struct IceceklerCellView_Previews: PreviewProvider {
    static var previews: some View {
        IceceklerCellView(icecek: restoranlar[0].icecekler[0])
    }
}
