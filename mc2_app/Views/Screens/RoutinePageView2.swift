//
//  RoutinePageView2.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 02/07/22.
//

import SwiftUI

struct RoutinePageView2: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    VStack{
                        Text("Satu hal untuk rutin")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: screenWidth - 56, height: 33, alignment: .leading)
                        
                        Text("Dengan mengaktifkan notifikasi 3x akan dapat membantumu rutin menggunakan skincare dasar. Apakah anda ingin berhasil membangun kebiasaan menggunakan skincare dasar?")
                            .foregroundColor(.white)
                            .frame(width: screenWidth - 56, alignment: .leading)
                        
                        
                }
                    .frame(width: screenWidth ,height: 220, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [
                        Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                        Color(red: 0/255, green: 20/255, blue: 34/255),
                    ]), startPoint: .center, endPoint: .bottom))
                }
                Spacer()
                
                Circle()
                    .fill(Color("Circle1"))
                    .frame(width: 194, height: 194)
                    .overlay {
                        Circle()
                            .fill(Color("Circle2"))
                            .frame(width: 150, height: 150)
                            .overlay {
                                Image("Alarm")
                                    .resizable()
                                    .frame(width: 81, height: 85)
                            }
                    }
                Spacer()
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 282, height: 50, alignment: .center)
                    .overlay {
                        Text("Ayo cek jenis kulitmu")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                Text("Tidak, saya akan melakukannya sendiri")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 251, height: 44)
                    .multilineTextAlignment(.center)
                    Spacer()
            }
            .frame(width: screenWidth, height: screenHeight)
            .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
        }
    }
}

struct RoutinePageView2_Previews: PreviewProvider {
    static var previews: some View {
        RoutinePageView2()
    }
}
