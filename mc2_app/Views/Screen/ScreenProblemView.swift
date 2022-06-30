//
//  ScreenProblemView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct ScreenProblemView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    let horizontalPadding: CGFloat = 24
    
    var body: some View {
        ZStack {
            VStack{
                HStack {
                    Text("Apa masalah kulit \nwajahmu?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .padding(.top, 10)
                        .padding(.horizontal, horizontalPadding)
                        .foregroundColor(.white)
                        .frame(width: screenWidth - 56, alignment: .leading)
                }
                .frame(width: screenWidth ,height: 280, alignment: .leading)
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37), Color(red: 0/255, green: 20/255, blue: 34/255)]), startPoint: .center, endPoint: .bottom))
                
               
                
                HStack(spacing: 12){
                    SkinProblemCard(skinProblem: "Wajah Berjerawat", imageName: "jerawat")
                    SkinProblemCard(skinProblem: "Wajah Kusam", imageName: "Kusam")
                }
                
                VStack(alignment: .leading) {
                    Text("Disini nanti notes")
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Button {
                    // sudah tau jenis kulit
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
                    .frame(height: 30)
                
                Button{
                    //sudah tau jenis kulit
                } label: {
                    Text("Saya sudah tau jenis kulit saya")
                        .foregroundColor(.white)
                }
                
                Spacer()
                    .frame(height: 40)
            }
            .padding(.horizontal, horizontalPadding)
        }
        .frame(width: screenWidth, height: screenHeight)
        .background(Color(red: 0/255, green: 20/255, blue: 34/255))
    }
}

struct ScreenProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenProblemView()
    }
}



