//
//  RestorantCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 3.10.2023.
//

import SwiftUI

struct RestorantCellView: View {
    let restorant : Restorant
    @State private var isHeart : Bool = false
    @ObservedObject var ViewModel = FavoriViewModel.shared
    var body: some View {
        VStack{
            ZStack{
                Image(restorant.resim)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .padding(.horizontal)
                ZStack{
                    Rectangle().fill(.white.opacity(0.86))
                        .frame(width: 60,height: 25)
                        .cornerRadius(12)
                    Text("30 dk.")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                }
                .offset(x:-135,y: 90)
                
                ZStack{
                    Circle().fill(.white.opacity(0.86))
                        .frame(width: 32,height: 32)
                    Button{
                        self.isHeart.toggle()
                        if self.isHeart == true {
                            ViewModel.favoriEkle(restorant: restorant)
                        }
                        else {
                            ViewModel.favoriCikar(restorant: restorant)
                        }
                         

                    }label: {
                        Image(systemName: self.isHeart ? "heart.fill" : "heart")
                            .foregroundColor(self.isHeart ? .orange : .black)
                    }
                    .font(.system(size: 20))
                }
                .offset(x:155,y: -92)
            }
            VStack(spacing: 5){
                HStack{
                    Image(systemName: "pin.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16,height: 16)
                    Text(restorant.restorant_adi)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        
                    Spacer()
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16,height: 16)
                            .foregroundColor(.orange)
                        HStack{
                            Text("4.5")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                            Text("(500+)")
                                .font(.system(size: 14))
                                .foregroundColor(.black.opacity(0.6))
                                
                        }
                    }
                    
                }.padding(.horizontal)
                HStack{
                    Text(restorant.restorant_turu)
                        .foregroundColor(.black.opacity(0.6))
                    Spacer()
                }.padding(.horizontal)
                HStack{
                    Text("90,00 TL min. sepet tutarı")
                        .font(.system(size: 13))
                        .foregroundColor(.black.opacity(0.6))
                    Circle().fill(.black.opacity(0.6))
                        .frame(width: 6,height: 6)
                    Image(systemName: "car")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15,height: 15)
                    Text("Ücretsiz Gönderim")
                        .foregroundColor(Color("ColorGreen"))
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RestorantCellView_Previews: PreviewProvider {
    static var previews: some View {
        RestorantCellView(restorant: restoranlar[0])
    }
}

