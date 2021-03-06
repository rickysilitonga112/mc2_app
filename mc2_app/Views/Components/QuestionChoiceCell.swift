//
//  QuestionChoiceCell.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 01/07/22.
//

import SwiftUI

struct QuestionChoiceCell: View {
    @Binding var vm: Any
    let choiceTitle: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.34), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(0.26)
                .shadow(radius: 3)
            
            Text(choiceTitle)
                .multilineTextAlignment(.leading)
                .font(.headline)
//                .foregroundColor(.black)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            
            
        }
        .frame(height: 68, alignment: .leading)
        .padding(.horizontal, kHorizontalPadding)
        .onTapGesture {
            // do something
        }
    }
}
