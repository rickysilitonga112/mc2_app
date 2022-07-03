//
//  DashboardView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct DashboardView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    VStack{
                        Spacer()
                            .frame(height: 420)
                        Text("Welcome back, ")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .frame(width: screenWidth - 56, alignment: .leading)
                        Spacer()
                            .frame(height: 24)
                        HStack{
                            Text("Tipe Kulit Kamu")
                                .foregroundColor(.white)
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                                .frame(width: 37)
                            Text("Lihat Riwayat Tes")
                                .foregroundColor(.white)
                                .font(.headline)
                                .fontWeight(.semibold)
                        }
                        Spacer()
                            .frame(height: 25)
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .opacity(0.15)
                                .shadow(radius: 3)
                                .frame(width: 334, height: 161)
                            HStack{
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .opacity(0.26)
                                    .shadow(radius: 3)
                                    .frame(width: 102, height: 142)
                                    .overlay {
                                        Image("WajahSatu")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80)
                                    }
                                VStack{
                                    Text("Kulit Berminyak")
                                        .foregroundColor(.white)
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .frame(width: 188, alignment: .leading)
                                    Text("Hasil tes terakhir kamu menunjukkan bahwa jenis kulit kamu **berminyak** dan juga **berjerawat**")
                                        .foregroundColor(.white)
                                        .font(.callout)
                                        .frame(width: 188, height: 90)
                                }
                            }
                              
                        }
                        
                        Spacer()
                            .frame(height: 50)
                        Text("Rutin Skincare")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(width: 334, alignment: .leading)
                        Spacer()
                            .frame(height:25)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .opacity(0.15)
                                .shadow(radius: 3)
                                .frame(width: 334, height: 161)
                            HStack{
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .opacity(0.26)
                                    .shadow(radius: 3)
                                    .frame(width: 102, height: 142)
                                    .overlay {
                                        Image("21hari")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80)
                                    }
                                VStack{
                                    Text("Ikuti tantangan 21 hari menggunakan skincare ")
                                        .foregroundColor(.white)
                                        .frame(width: 180, alignment: .leading)
                                    Capsule()
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width: 180, height: 41, alignment: .center)
                                        .overlay {
                                            Text("Mulai tantangan")
                                                .foregroundColor(Color.white)
                                                .fontWeight(.bold)
                                        }
                               
                                }
                                
                            }
                              
                        }
                        
                            
                    }.frame(width: screenWidth ,height: 220, alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: [
                            Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                            Color(red: 0/255, green: 20/255, blue: 34/255),
                        ]), startPoint: .center, endPoint: .bottom))
                    
                }
                Spacer()
            }.frame(width: screenWidth, height: screenHeight)
                .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
