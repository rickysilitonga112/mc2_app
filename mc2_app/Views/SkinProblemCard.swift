//
//  SkinProblemCard.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 29/06/22.
//

import SwiftUI

struct SkinProblemCard: View {
    let skinProblem: String
    let imageName: String
    @State var isCheck: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 235/255, blue: 255/255).opacity(0.4), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .opacity(0.26)
            .frame(width: 156, height: 240, alignment: .center)
            .overlay {
                ZStack {
                    VStack{
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120)
                        Spacer()
                            .frame(height: 20)
                        Text(skinProblem)
                            .font(.callout)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                    }
                    
                    Circle()
                        .fill(.blue)
                        .frame(width: 22, height: 22)
                        .position(x: 156 - 14, y: 14)
                        .overlay {
                            Circle()
                                .frame(width: 20, height: 20)
                                .position(x: 156 - 14, y: 14)
                                .overlay {
                                    Image(systemName: "checkmark.circle.fill")
                                        .frame(width: 20, height: 20)
                                        .position(x: 156 - 14, y: 14)
                                        .foregroundColor(.white)
                                        .opacity(isCheck ? 1 : 0)
                                }
                        }
                }
            }
            .onTapGesture {
                isCheck.toggle()
            }
    }
}

struct SkinProblemCard_Previews: PreviewProvider {
    static var previews: some View {
        SkinProblemCard(skinProblem: "Kulit Berjerawat", imageName: "Jerawat", isCheck: false)
    }
}
