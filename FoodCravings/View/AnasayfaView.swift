//
//  MainView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI

struct AnasayfaView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.gray.opacity(0.09)
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing: 25){
                        HeaderView()
                            .edgesIgnoringSafeArea(.top)
                        CustomSearchBar()
                            .offset(y:10)
                        HStack{
                            Text("Kategoriler")
                                .font(.system(size: 25))
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.vertical)
                        KategoriView()
                            .padding(.horizontal)
                            .offset(y:-30)
                        HStack{
                            Text("Restorantlar")
                                .font(.system(size: 25))
                            Spacer()
                        }
                        .padding(.horizontal)
                        .offset(y:-30)
                        RestorantView()
                            .offset(y:-30)
                        Spacer()
                        
                        
                    }
                }.edgesIgnoringSafeArea(.all)
            }
        }
        
    }
}
struct CustomSearchBar : View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(.orange,lineWidth: 2)
                .frame(width: UIScreen.main.bounds.width - 20,height: 40)
            HStack{
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 22))
                Text("What do you want to eat")
                    .font(.system(size: 15))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
                    
            }.offset(x:25)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        AnasayfaView()
    }
}
