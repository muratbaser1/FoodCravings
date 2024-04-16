//
//  ContentView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 3.10.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var ViewModel = SepetViewModel.shared
    var body: some View {
        TabView{
            AnasayfaView().tabItem {
                Image(systemName: "house")
                Text("Anasayfa")
            }
            AraView().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Ara")
            }
            FavoriView().tabItem {
                Image(systemName: "heart")
                Text("Favoriler")
            }
            SepetView().tabItem {
                Image(systemName: "cart")
                Text("Sepetim")
            }
            .badge(ViewModel.sepetList.count)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
