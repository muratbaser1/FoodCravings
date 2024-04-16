//
//  SepetCellView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 6.10.2023.
//

import SwiftUI
struct SepetCellView: View {
    var yemekler : Yemekler
    @State private var urun_sayisi = 1
    @Binding var toplamFiyat : Int
    @ObservedObject var ViewModel = SepetViewModel.shared
    var body: some View {
        
        HStack{
            
            Image(yemekler.yemekresmi)
                .resizable()
                .scaledToFit()
                .frame(width: 90,height: 90)
            VStack(alignment: .leading,spacing: 10){
                
                Text(yemekler.yemekadi)
                    .lineLimit(1)
                Text("\(yemekler.yemekfiyati) TL")
            }
            Spacer()
            HStack{
                Button{
                    let uruntoplamfiyat = urun_sayisi * yemekler.yemekfiyati
                    self.toplamFiyat -= uruntoplamfiyat
                    self.urun_sayisi += 1
                    let yeniuruntoplamfiyat = urun_sayisi * yemekler.yemekfiyati
                    self.toplamFiyat += yeniuruntoplamfiyat
                }label: {
                    Image(systemName: "plus.circle")
                        .foregroundColor(Color.black)
                }
                Text("\(self.urun_sayisi)")
                Button{
                    // minus
                    if self.urun_sayisi > 0 {
                        let uruntoplamfiyat = urun_sayisi * yemekler.yemekfiyati
                        self.toplamFiyat -= uruntoplamfiyat
                        self.urun_sayisi -= 1
                        let yeniuruntoplamfiyat = urun_sayisi * yemekler.yemekfiyati
                        self.toplamFiyat += yeniuruntoplamfiyat
                    }
                    if self.urun_sayisi == 0 {
                        ViewModel.sepetCikar(yemek: yemekler)
                    }
     
                }label: {
                    Image(systemName: "minus.circle")
                        .foregroundColor(.black)
                }
            }
            .font(.system(size: 26))
            
        }.padding(.horizontal)
         
    }
    
}

struct SepetCellView_Previews: PreviewProvider {
    static var previews: some View {
        SepetCellView(yemekler: restoranlar[0].yemekler[0], toplamFiyat: .constant(0))
    }
}
