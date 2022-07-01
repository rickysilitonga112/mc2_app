//
//  SkinProblemCard.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 29/06/22.
//

import SwiftUI

struct SkinProblemCard: View {
    let title: String
    let imageName: String
    let identifier: SkinProblem
    
    @Binding var skinProblem: SkinProblem
    var action: () -> Void
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(LinearGradient(gradient: Gradient(colors: [
                Color(red: 255/255, green: 235/255, blue: 255/255).opacity(0.4),
                Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)
            ]), startPoint: .topLeading, endPoint: .bottomTrailing))
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
                        Text(title)
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
                                            .opacity(skinProblem == identifier ? 1 : 0)
//                                            .transition(.asymmetric(insertion: .scale, removal: .opacity))
                                            .animation(.easeIn(duration: 0.35))
                                    
                                }
                        }
                }
            }
            .onTapGesture(perform: action)
    }
}

//struct SkinProblemCard_Previews: PreviewProvider {
//    static var previews: some View {
//        SkinProblemCard(skinProblem: "Kulit Berjerawat", imageName: "Jerawat")
//    }
//}
