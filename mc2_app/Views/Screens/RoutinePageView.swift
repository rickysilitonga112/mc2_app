//
//  RoutinePageView.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 02/07/22.
//

import SwiftUI

struct RoutinePageView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 24)
                        .fill(LinearGradient(gradient: Gradient(colors: [
                            Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.10),
                            Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.10),
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: screenWidth, height: 474)
                        .edgesIgnoringSafeArea(.all)
                        .overlay {
                            VStack{
                                Image("iconSunscreen")
                                    .resizable()
                                    .frame(width: 50, height: 64)
                                Text("Skincare Dasar")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text("Ayo gunakan skincare dasar selama 21 hari kedepan secara rutin. Gunakan Cleanser, Toner, Mousturizer dan Sunscreen untuk mendapatkan wajah yang tampan, bersih dan sehat.")
                                    .frame(width: 343, height: 110)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                }
                Spacer()
                    .frame(height: 34)
                VStack{
                    Text("Periksa progres selama 3 minggu dengan dokumentasikan foto wajahmu")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                        .frame(height: 31)
                    HStack{
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 191/255, opacity: 1), Color(red: 191/255, green: 191/255, blue: 191/255, opacity: 1)]), startPoint: .zero, endPoint: .center))
                            .frame(width: 28, height: 28, alignment: .center)
                            .overlay {
                                Text("1")
                            }
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 191/255, opacity: 1), Color(red: 191/255, green: 191/255, blue: 191/255, opacity: 1)]), startPoint: .zero, endPoint: .center))
                            .frame(width: 28, height: 28, alignment: .center)
                            .overlay {
                                Text("2")
                            }
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 191/255, opacity: 1), Color(red: 191/255, green: 191/255, blue: 191/255, opacity: 1)]), startPoint: .zero, endPoint: .center))
                            .frame(width: 28, height: 28, alignment: .center)
                            .overlay {
                                Text("3")
                            }
                    }
                }
                Spacer()
                    .frame(height: 53)
                
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 282, height: 50, alignment: .center)
                    .overlay {
                        Text("Saya terima tantangannya")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                    Spacer()
            }
        }.background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
    }
}

struct RoutinePageView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinePageView()
    }
}
