//
//  OnBoardingView.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 02/07/22.
//

import SwiftUI

struct OnBoardingView: View {
    private let screenWidth =
    UIScreen.main.bounds.size.width
    private let screenHeight =
    UIScreen.main.bounds.size.height
    
    var body: some View {
        
    ZStack{
        VStack{
            Spacer()
                .frame(height: 10)
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 220, alignment: .center)
            Spacer()
                .frame(height: 54)
            
            Text("**HANDSOME** HUNTERS")
                .font(.title)
                .foregroundColor(.white)
            
            Text("Kami bantu kamu menemukan cara terbaik untuk membangun rutin skincare dan juga rekomendasi produk yang cocok untuk kulit kamu")
                .foregroundColor(.white)
                .frame(width: 280, height: 95)
                .multilineTextAlignment(.center)
            Spacer()
                .frame(height: 52)
            
            Button {
                // do something
            } label: {
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 282, height: 50, alignment: .center)
                    .overlay {
                        Text("Ayo cek jenis kulitmu")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                
            }
   
            
            
        }
    }
    .frame(width: screenWidth, height: screenHeight)
    .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
}

}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
