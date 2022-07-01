//
//  SkinType.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 01/07/22.
//

import SwiftUI

struct SkinType: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
        ZStack {
            VStack{
                VStack{
                    Text("Apa jenis kulit wajahmu?")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .frame(width: 334, height: 82, alignment: .leading)
                        .foregroundColor(.white)
                }
                .frame(width: screenWidth ,height: 220, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                    Color(red: 0/255, green: 20/255, blue: 34/255),
                ]), startPoint: .center, endPoint: .bottom))
                
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.26)
                            .shadow(radius: 3)
                            .frame(width: 332, height: 67)
                        
                        Text("Saya memiliki jenis kulit Berminyak")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.26)
                            .shadow(radius: 3)
                            .frame(width: 332, height: 67)
                        
                        Text("Saya memiliki jenis kulit Normal")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.26)
                            .shadow(radius: 3)
                            .frame(width: 332, height: 67)
                        
                        Text("Saya memiliki jenis kulit Kering")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.26)
                            .shadow(radius: 3)
                            .frame(width: 332, height: 67)
                        
                        Text("Saya memiliki jenis kulit Kombinasi")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.26)
                            .shadow(radius: 3)
                            .frame(width: 332, height: 67)
                        
                        Text("Saya memiliki jenis kulit Normal cenderung Berminyak")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.26)
                            .shadow(radius: 3)
                            .frame(width: 332, height: 67)
                        
                        Text("Saya memiliki jenis kulit Normal cenderung Kering")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    
                }
               Spacer()
            }
        }
        .frame(width: screenWidth, height: screenHeight)
        .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
        
}

struct SkinType_Previews: PreviewProvider {
    static var previews: some View {
        SkinType()
    }
  }
}
