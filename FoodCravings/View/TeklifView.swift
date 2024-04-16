//
//  TeklifView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import SwiftUI

struct TeklifView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: [GridItem(.flexible())]){
                ForEach(teklifListesi,id: \.id){ i in
                    TeklifCell(teklif: i)
                }
            }
        }
    }
}

struct TeklifView_Previews: PreviewProvider {
    static var previews: some View {
        TeklifView()
    }
}
