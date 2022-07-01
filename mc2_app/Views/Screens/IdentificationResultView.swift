//
//  IdentificationResultView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct IdentificationResultView: View {
    private let screenWidth =
    UIScreen.main.bounds.size.width
    private let screenHeight =
    UIScreen.main.bounds.size.height
    
    var body: some View {
        
    ZStack{
        VStack(spacing:0){
            VStack{
                Text("Hasil Analisa")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Text("Kamu memiliki jenis kulit berminyak,dan permasalahan kulit wajahmu **Berjerawat**")
                .multilineTextAlignment(.center)
                .frame(width: 281, height: 90)
                .foregroundColor(.white)
            }
                .frame(width: screenWidth ,height: 220, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                    Color(red: 0/255, green: 20/255, blue: 34/255),
                ]), startPoint: .center, endPoint: .bottom))
            
            ZStack{
                RoundedRectangle(cornerRadius: 24)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .opacity(0.26)
                    .shadow(radius: 3)
                    .frame(width: 198, height: 232)
                Image("Jerawatt")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 124)
            }
           
            
            
            Spacer()
                .frame(height:188)
            
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
            Spacer()
            
        }
    }
    .frame(width: screenWidth, height: screenHeight)
    .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
}

struct IdentificationResultView_Previews: PreviewProvider {
    static var previews: some View {
        IdentificationResultView()
    }
}
}
