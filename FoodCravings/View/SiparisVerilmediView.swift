//
//  SiparisVerilmediView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 12.10.2023.
//

import SwiftUI

struct SiparisVerilmediView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.red)
                .frame(width: (UIScreen.main.bounds.width) - 50,height: 50)
                .cornerRadius(15)
            Text("Sepetiniz boş. Sipariş veremezsiniz.")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 17))

        }
    }
}

struct SiparisVerilmediView_Previews: PreviewProvider {
    static var previews: some View {
        SiparisVerilmediView()
    }
}
