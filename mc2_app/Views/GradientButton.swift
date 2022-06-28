//
//  GradientButton.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 28/06/22.
//

import SwiftUI

struct GradientButton: View {
    
    var body: some View {
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

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton()
    }
}
