//
//  SkinType.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 01/07/22.
//

import SwiftUI

struct SkinTypeView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    @State private var choosenSkinType: Int? = nil
    
    private let skinType: [String] = [
        "Saya memiliki jenis kulit Berminyak",
        "Saya memiliki jenis kulit Normal",
        "Saya memiliki jenis kulit Kering",
        "Saya memiliki jenis kulit Kombinasi"
    ]
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Apa jenis kulit \nwajahmu?")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.horizontal, 28)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: screenWidth ,height: 220, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                    Color(red: 0/255, green: 20/255, blue: 34/255),
                ]), startPoint: .center, endPoint: .bottom))
                
                VStack {
                    ForEach(0 ..< skinType.count, id: \.self) { index in
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .if(choosenSkinType == index) { cell in
                                    cell.fill(kCellGradientBg)
                                }
                                .opacity(0.26)
                                .shadow(radius: 3)
                                .frame(width: 332, height: 67)
                                .border(.white, width: (choosenSkinType == index) ? 1.5 : 0.5)
                                
                            Text(skinType[index])
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .frame(width: 332, height: 67, alignment: .leading)
                        }
                        
                        .onTapGesture(perform: {
                            choosenSkinType = (choosenSkinType == index) ? nil : index
                            
                        })
//                        .if(choosenSkinType == index) { view in
//                            view.border(.white, width: 2)
//                        }
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                    Button {
                        print(choosenSkinType ?? "")
                        if let choosenSkinType = choosenSkinType {
                            let finalUserSkinType = skinType[choosenSkinType]
                            print(finalUserSkinType)
                        }
                    } label: {
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 282, height: 50, alignment: .center)
                            .overlay {
                                Text("Selanjutnya")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                            }
                        
                    }
                    
                }
               Spacer()
            }
        }
        .frame(width: screenWidth, height: screenHeight)
        .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
        
}

struct SkinTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SkinTypeView()
    }
  }
}
