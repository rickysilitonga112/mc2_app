//
//  QuestionChoiceCell.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 01/07/22.
//

import SwiftUI

struct QuestionChoiceCell: View {
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
                .foregroundColor(.white)
        }
        .frame(height: 70, alignment: .center)
        .padding(.horizontal, kHorizontalPadding)
    }
}


struct QuestionChoiceCell_Previews: PreviewProvider {
    static var previews: some View {
        QuestionChoiceCell(choiceTitle: "Tampak mengilap dan berminyak dimana-mana")
    }
}
