//
//  ScreenProblemView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct ScreenProblemView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Text("Apa masalah kulit wajahmu?")
                    .font(.title)
                    .fontWeight(.semibold)
                    .background()
                    .frame(width: screenWidth - 54, alignment: .leading)
                    .padding(28)
            } .frame(width: screenWidth, height: 184, alignment: .leading)
                .background(.gray)
            Spacer()
            
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 235/255, blue: 255/255, opacity: 0.4), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 166, height: 234, alignment: .center)
                        .overlay {
                            VStack{
                                Image("Jerawat")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120)
                                Text("Wajah Berjerawat")
                                    .font(.callout)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                
                            }.padding()
                        }
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray)
                        .frame(width: 166, height: 234, alignment: .center)
                        .overlay {
                            VStack{
                                Image("Kusam")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120)
                                Text("Wajah Kusam")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                
                                
                            }.padding()
                        }
                }
                
                
            }
            Spacer()
            
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
            Spacer()
                .frame(height: 30)
            Button{
                //sudah tau jenis kulit
            } label: {
                Text("Saya sudah tau jenis kulit saya")
                    .foregroundColor(.black)
                
            }
        }.padding(.horizontal, 28)
            .background(Color(red: 0/255, green: 20/255, blue: 34/255))
        
    }
}

struct ScreenProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenProblemView()
    }
}

