//
//  OnBoardView2.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 02/07/22.
//

import SwiftUI

struct OnBoardView2: View {
    private let screenWidth =
    UIScreen.main.bounds.size.width
    private let screenHeight =
    UIScreen.main.bounds.size.height
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    Image("onboard2")
                        .frame(width: screenWidth, height: 250, alignment: .trailing)
                }
                Spacer()
                
                VStack{
                    Text("Ikuti Tantangan 21 Hari Rutin Skincare")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 290, height: 68, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("Kamu bisa atur jadwal skincare yang cocok buat kamu dan juga kamu bisa mengatur membuat pengingat pada saatnya kamu harus menggunakan skincare kamu.")
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

struct OnBoardView2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView2()
    }
}
