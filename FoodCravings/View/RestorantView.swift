//
//  RestorantView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import SwiftUI

struct RestorantView: View {
    var body: some View {
        NavigationStack{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: [GridItem(.flexible())]){
                    ForEach(restoranlar,id: \.id){i in
                        NavigationLink(destination: RestorantDetayCell(restorant: i)){
                            RestorantCellView(restorant: i)
                                .padding(.vertical,3)
                        }
                    }
                }
            }
        }
    }
}

struct RestorantView_Previews: PreviewProvider {
    static var previews: some View {
        RestorantView()
    }
}
