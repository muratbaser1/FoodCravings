//
//  HeaderView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.orange.opacity(0.9))
                .frame(width: UIScreen.main.bounds.width,height: 110)
            Text("FoodCravings")
                .foregroundColor(.white)
                .fontDesign(.default)
                .fontWeight(.bold)
                .font(.system(size: 22))
                .offset(y:25)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
