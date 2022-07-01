//
//  ScreenProblemView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

enum SkinProblem {
    case none
    case berjerawat
    case kusam
}

struct ScreenProblemView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    @State var skinProblem = SkinProblem.none
    @State var session: String? = nil
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    HStack {
                        Text("Apa masalah kulit \nwajahmu?")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .padding(.top, 10)
                            .padding(.horizontal, kHorizontalPadding)
                            .foregroundColor(.white)
                            .frame(width: screenWidth - 56, alignment: .leading)
                    }
                    .frame(width: screenWidth ,height: 220, alignment: .leading)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37), Color(red: 0/255, green: 20/255, blue: 34/255)]), startPoint: .center, endPoint: .bottom))
                    
                    HStack(spacing: 22) {
                        SkinProblemCard(title: "Wajah Berjerawat", imageName: "Jerawatt", identifier: SkinProblem.berjerawat, skinProblem: $skinProblem) {
                            skinProblem = (skinProblem == .none || skinProblem == .kusam) ? .berjerawat : .none
                         }
                        
                        SkinProblemCard(title: "Wajah Kusam", imageName: "Kusam", identifier: .kusam, skinProblem: $skinProblem) {
                            skinProblem = (skinProblem == .none || skinProblem == .berjerawat) ? .kusam : .none
                        }
                    } .padding(.horizontal, kHorizontalPadding)
                    VStack(alignment: .leading) {
                        Text("Jika tidak memiliki masalah wajah, lanjut tanpa mencentang!")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, kHorizontalPadding)
                            .padding(.vertical, 10)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: QuestionView(), tag: "question", selection: $session) {
                        
                    }
                    
                    NavigationLink(destination: IdentificationResultView(), tag: "result", selection: $session) {
                        
                    }
                    
                    
                    Button {
                        // go to questionview
                        session = "question"
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
                       session = "result"
                        
                    } label: {
                        Text("Saya sudah tau jenis kulit saya")
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                      
                }
            }
    //        .frame(width: screenWidth, height: screenHeight)
            .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
            .navigationBarHidden(true)
        }
        
    }
}

struct ScreenProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenProblemView()
    }
}



