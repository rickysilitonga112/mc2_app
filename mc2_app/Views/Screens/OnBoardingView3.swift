//
//  OnBoardingView3.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 02/07/22.
//

import SwiftUI

struct OnBoardingView3: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    Image("onboard3")
                        .frame(width: screenWidth, height: 250, alignment: .trailing)
                }
                Spacer()
                
                VStack{
                    Text("Dapatkan Tips Kesehatan")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 290, height: 68, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("Tenang saja, bukan hanya pengingat dan mengatur jadwal skincare, kamu juga bisa mendapatkan tips untuk merawat kulit kamu agar bisa ganteng maksimal!")
                        .foregroundColor(.white)
                        .font(.body)
                        .frame(width: 290, height: 140)
                    
                }
                Spacer()
                
                HStack{
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 191/255, opacity: 1), Color(red: 191/255, green: 191/255, blue: 191/255, opacity: 1)]), startPoint: .zero, endPoint: .center))
                        .frame(width: 20, height: 20, alignment: .center)
                      
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 191/255, opacity: 1), Color(red: 191/255, green: 191/255, blue: 191/255, opacity: 1)]), startPoint: .zero, endPoint: .center))
                        .frame(width: 20, height: 20, alignment: .center)
                        
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 191/255, opacity: 1), Color(red: 191/255, green: 191/255, blue: 191/255, opacity: 1)]), startPoint: .zero, endPoint: .center))
                        .frame(width: 20, height: 20, alignment: .center)
                }
                Spacer()
                    .frame(height: 50)
                
            }
        }
        .frame(width: screenWidth, height: screenHeight)
            .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
    }
}

struct OnBoardingView3_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView3()
    }
}
