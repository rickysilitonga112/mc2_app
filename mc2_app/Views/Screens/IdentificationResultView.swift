//
//  IdentificationResultView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct IdentificationResultView: View {
    var body: some View {
        
    ZStack{
        VStack{
            Text("Hasil Analisa")
                .font(.largeTitle)
                .fontWeight(.medium)
            Text("""
Kamu memiliki jenis kulit berminyak,
dan permasalahan kulit wajahmu
**Berjerawat**
""")
            .multilineTextAlignment(.center)
            .frame(width: 281, height: 90)
            
            RoundedRectangle(cornerRadius: 8)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.34), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 198, height: 232)
                .opacity(0.26)
                .shadow(radius: 3)
                .overlay {
                    ZStack{
                        Image("Jerawatt")
                            .resizable()
                            .frame(width: 124, height: 176)
                    }
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
            
            
            
        }
    }
}

struct IdentificationResultView_Previews: PreviewProvider {
    static var previews: some View {
        IdentificationResultView()
    }
}
}
