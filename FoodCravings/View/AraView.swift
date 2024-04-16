//
//  AraView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI

struct AraView: View {
    @State private var ara = ""
    @Environment(\.presentationMode) var pm
    func arama() -> [Restorant] {
        if ara.isEmpty {
            return restoranlar
        }
        else {
            return restoranlar.filter{ filt in
                filt.restorant_adi.localizedCaseInsensitiveContains(ara) || filt.restorant_turu.localizedCaseInsensitiveContains(ara)
            }
        }
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    TextField("Restorant Ara", text: $ara)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.orange.opacity(0.19))
                        .padding(.horizontal)
                        .overlay(
                            Rectangle().stroke(.black)
                                .padding(.horizontal,16)
                                .cornerRadius(12)
   
                                
                        )
                    
                    Spacer()
                }
                .padding(.top, 20)
                Spacer()
                ScrollView(.vertical,showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible())]){
                        ForEach(arama(),id: \.id){i in
                            NavigationLink(destination: RestorantDetayCell(restorant: i)){
                                AraCellView(restorant: i)
                            }
                                
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            
            
        }
    }
}

struct AraView_Previews: PreviewProvider {
    static var previews: some View {
        AraView()
    }
}
