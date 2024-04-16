//
//  SiparisVerildiView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 12.10.2023.
//

import SwiftUI

struct SiparisVerildiView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(Color("ColorGreen2").opacity(0.9))
                .frame(width: (UIScreen.main.bounds.width) - 50,height: 50)
                .cornerRadius(15)
            Text("Siparişiniz Verildi")
                .foregroundColor(.white)
                .fontWeight(.bold)

        }
    }
}

struct SiparisVerildiView_Previews: PreviewProvider {
    static var previews: some View {
        SiparisVerildiView()
    }
}
