//
//  SiparisView.swift
//  FoodCravings
//
//  Created by MURAT BAŞER on 4.10.2023.
//

import SwiftUI
import SlidingTabView
struct SepetView: View {
    @State private var pickerCurrent = 0
    @State private var toplamTutar = 0
    @ObservedObject var ViewModel = SepetViewModel.shared
    @State private var isSiparisverildi = false
    @State private var isSiparisverilmedi = false

    
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .orange
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.orange], for: .normal)
        
    }
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.09)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Picker("", selection: $pickerCurrent){
                    Text("Siparişlerim").tag(0)
                    Text("Geçmiş Siparişlerim").tag(1)
                }.pickerStyle(SegmentedPickerStyle()).foregroundColor(Color.orange)
                    .padding(.horizontal)
                    .padding(.top,40)
                
                if self.pickerCurrent == 0 {
                    SepetListView(toplamTutar: $toplamTutar)
                        .offset(y:15)
                    
                    Spacer()
                    if isSiparisverildi == true {
                        SiparisVerildiView()
                            .offset(y:-25)
                    }
                    else if isSiparisverilmedi == true {
                        SiparisVerilmediView()
                            .offset(y:-25)
                    }
                    CustomSiparis(toplamTutar: $toplamTutar, isSiparisverildi: $isSiparisverildi, isSiparisverilmedi: $isSiparisverilmedi)
                        .offset(y:-25)
                    
                     
                }
                else if self.pickerCurrent == 1 {
                    GecmisSiparislerView()
                }
                
                    
            }
            
        }
        
        .onAppear{
            toplamTutar = ViewModel.sepetList.reduce(0) { $0 + $1.yemekfiyati }
            //siparisViewModel.verileriOku()
            
        }

    }
    
}


struct CustomSiparis : View {
    @Binding var toplamTutar : Int
    @Binding var isSiparisverildi : Bool
    @Binding var isSiparisverilmedi : Bool
    @ObservedObject var ViewModel = SepetViewModel.shared
    @State private var currentDate = Date()

    var body: some View {
        VStack{
            ZStack{
                Rectangle().fill(.white)
                    .frame(width: 340,height: 110)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.4), radius: 1,x: 3,y: 3)
                VStack{
                    HStack{
                        Text("Toplam Tutar")
                        Spacer()
                        Text("\(toplamTutar) TL")
                    }
                    .padding(.horizontal,40)
                    .offset(y:-5)
                    Divider()
                        .background(.black)
                        .frame(width: 320)
                        .offset(y:-5)
                    Button{
                        if self.ViewModel.sepetList.isEmpty {
                            self.isSiparisverilmedi = true
                        }
                        else {
                            self.isSiparisverildi = true
                             
                        }
                        
                        ViewModel.sepetList = []
                        self.toplamTutar = 0
                        if self.isSiparisverilmedi == true {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                self.isSiparisverilmedi = false
                            }
                        }
                        else if self.isSiparisverildi == true {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                self.isSiparisverildi = false
                            }
                        }
                    }label: {
                        Text("Sipariş Ver")
                            .foregroundColor(.white)
                    }
                    .frame(width: 320,height: 40)
                    .background(Color("ColorOrange"))
                    .cornerRadius(20)
                    .offset(y:5)

                }
            }
        }
    }
    
}


struct SiparisView_Previews: PreviewProvider {
    static var previews: some View {
        SepetView()
    }
}

