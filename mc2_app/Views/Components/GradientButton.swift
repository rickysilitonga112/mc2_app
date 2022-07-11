//
//  GradientButton.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 28/06/22.
//

import SwiftUI

struct GradientButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Capsule()
                .fill(kButtonGradient)
                .frame(width: 282, height: 50, alignment: .center)
                .overlay {
                    Text(title)
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                }
        }
    }
}

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton(title: "Test") {
            // do something
        }
    }
}
