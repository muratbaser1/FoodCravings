//
//  MenuView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 6.10.2023.
//

 
import SwiftUI

struct MenuView: View {
    var restorant : Restorant
    @ObservedObject var ViewModel = SepetViewModel.shared
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]){
                ForEach(restorant.yemekler,id: \.id){i in
                    MenuCellView(yemek: i)
                }
            }
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(restorant:restoranlar[0])
    }
}
