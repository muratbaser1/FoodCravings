//
//  TeklifCell.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 5.10.2023.
//

import SwiftUI

struct TeklifCell: View {
    let teklif : Teklif
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.orange.opacity(0.2))
                .frame(width: 260,height: 90)
            VStack(alignment: .leading, spacing: 10){
                Text(teklif.indirim_baslik)
                    .foregroundColor(Color("ColorOrange"))
                    .fontWeight(.bold)
                Text(teklif.indirim_aciklama)
                    .font(.system(size: 13))
                    .foregroundColor(.black.opacity(0.7))
                    
            }.offset(x:5)
        }
    }
}

struct TeklifCell_Previews: PreviewProvider {
    static var previews: some View {
        TeklifCell(teklif: teklifListesi[0])
    }
}
