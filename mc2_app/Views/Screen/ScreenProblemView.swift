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
    
    var body: some View {
        ZStack {
            Image("bg_blur")
                .resizable()
                .frame(width: screenWidth)
            
            VStack{
                ZStack {
                    Text("Apa masalah kulit \nwajahmu?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .foregroundColor(.white)
                        .frame(width: screenWidth - 56, alignment: .leading)
                    
                }
                .frame(height: 180, alignment: .leading)
                
                Spacer()
                
                HStack(spacing: 12){
                    SkinProblemCard(skinProblem: "Wajah Berjerawat", imageName: "Jerawat")
                    SkinProblemCard(skinProblem: "Wajah Kusam", imageName: "Kusam")
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
                    .frame(height: 18)
                
                Button{
                    //sudah tau jenis kulit
                } label: {
                    Text("Saya sudah tau jenis kulit saya")
                        .foregroundColor(.white)
                }
                
                Spacer()
                    .frame(height: 20)
            }.padding(.horizontal, 28)
                .background(Color(red: 0/255, green: 20/255, blue: 34/255))
            
            
        }
        
    }
}

struct ScreenProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenProblemView()
    }
}


struct SkinProblemCard: View {
    let skinProblem: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 235/255, blue: 255/255).opacity(0.4), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .opacity(0.26)
            .frame(width: 156, height: 240, alignment: .center)
            .overlay {
                VStack{
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                    Text(skinProblem)
                        .font(.callout)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    
                }
            }
    }
}
