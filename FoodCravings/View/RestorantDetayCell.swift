//
//  RestorantDetayCell.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import SwiftUI

struct RestorantDetayCell: View {
    var restorant : Restorant
    @State private var count = 0
    @Environment(\.presentationMode) var pm
    var body: some View {
        NavigationStack{
            ZStack{
                Color.gray.opacity(0.09)
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing:13){
                        ZStack{
                            Image(restorant.resim)
                                .resizable()
                                .scaledToFit()
                                .edgesIgnoringSafeArea(.top)
                                .offset(y:-60)
                            ZStack{
                                Rectangle().fill(.white)
                                    .frame(width: 35,height: 35)
                                    .cornerRadius(10)
                                Button{
                                    // geri tuşu
                                    self.pm.wrappedValue.dismiss()
                                }label: {
                                    Image(systemName: "chevron.backward")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25,height: 25)
                                        .fontWeight(.bold)
                                }
                            }
                            .offset(x:-160,y: -100)
                        }
                        VStack(spacing: 15){
                            HStack{
                                Text(restorant.restorant_adi)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                
                                Spacer()
                            }.padding(.horizontal)
                            VStack(spacing: 8){
                                HStack{
                                    Image(systemName: "star.circle.fill")
                                        .foregroundColor(.orange)
                                    Text("Restoran | 1.2 km uzaklıkta")
                                        .foregroundColor(.black.opacity(0.6))
                                    Spacer()
                                }.padding(.horizontal)
                                HStack{
                                    Text("Ücretsiz Teslimat")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black.opacity(0.6))
                                    Spacer()
                                }.padding(.horizontal)
                                HStack{
                                    Text("Minimum Teslimat Tutarı 90.00 TL")
                                        .foregroundColor(.black.opacity(0.6))
                                    Spacer()
                                }.padding(.horizontal)
                            }
                            HStack{
                                Image(systemName: "star").foregroundColor(.orange)
                                Text("4.5").bold()
                                Circle()
                                    .fill(.black)
                                    .frame(width: 5,height: 5)
                                Text("1000+ değerlendirme")
                                    .font(.system(size: 15))
                                    .foregroundColor(.black.opacity(0.6))
                                Spacer()
                                Button{
                                    
                                }label: {
                                    Text("Yorumları Gör")
                                        .foregroundColor(Color("ColorOrange"))
                                }
                                .fontWeight(.bold)
                                .font(.system(size: 14))
                            }.padding(.horizontal)
                        }
                        .offset(y:-50)
                        
                        HStack{
                            Image(systemName: "gift.fill")
                                .foregroundColor(.orange)
                                .font(.system(size: 20))
                            Text("Mevcut Teklifler")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Spacer()
                        }
                        .offset(y:-40)
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        TeklifView()
                            .padding(.horizontal)
                        .offset(y:-40)
                        HStack{
                            Image(systemName: "menucard.fill")
                                .foregroundColor(.orange)
                                .font(.system(size: 25))
                            Text("Menüler")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .offset(y:-40)
                        MenuView(restorant: restorant)
                            .offset(y:-40)
                                                        
                            
                        
                        HStack{
                            Image(systemName: "mug.fill")
                                .foregroundColor(.orange)
                                .font(.system(size: 25))
                            Text("İçecekler")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            Spacer()
                        }
                        .padding(.horizontal)
                        .offset(y:-30)
                        IceceklerView(restorant: restorant)
                            .offset(y:-30)
                        
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
                
        }
    }
}

 struct RestorantDetayCell_Previews: PreviewProvider {
     static var previews: some View {
     RestorantDetayCell(restorant: restoranlar[0])
    }
 }
 
