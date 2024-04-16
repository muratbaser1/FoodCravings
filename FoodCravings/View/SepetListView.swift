//
//  SepetListView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 6.10.2023.
//

import SwiftUI

struct SepetListView: View {
    @ObservedObject var ViewModel = SepetViewModel.shared
    @Binding var toplamTutar : Int
    var body: some View {

        ScrollView(.vertical,showsIndicators: false){
            LazyVGrid(columns: [GridItem(.flexible())]){
                ForEach(ViewModel.sepetList,id: \.id){i in
                    SepetCellView(yemekler: i,toplamFiyat: $toplamTutar)
                        
                }
                
            }
        }
        
    }
}


struct SepetListView_Previews: PreviewProvider {
    static var previews: some View {
        SepetListView(toplamTutar: .constant(0))
    }
}
