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
    
    @State var skinProblem = SkinProblem.none
    @State var session: String? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                // root vstack
                VStack {
                    // gradient red bg + text
                    HStack {
                        Text("Apa masalah kulit \nwajahmu?")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        Spacer()
                    }
                    .frame(width: screenWidth ,height: 220)
                    .background(kRedGradientBG)
                    
                    // skin problem card + footnotes
                    VStack {
                        HStack() {
                            SkinProblemCard(title: "Wajah Berjerawat", imageName: "MUKA_BERJERAWAT", identifier: SkinProblem.berjerawat, skinProblem: $skinProblem) {
                                skinProblem = (skinProblem == .none || skinProblem == .kusam) ? .berjerawat : .none
                             }
                            
                            Spacer()
                            
                            SkinProblemCard(title: "Wajah Kusam", imageName: "MUKA_KUSAM", identifier: .kusam, skinProblem: $skinProblem) {
                                skinProblem = (skinProblem == .none || skinProblem == .berjerawat) ? .kusam : .none
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        // footnotes
                        HStack {
                            Spacer()
                            Text("Jika tidak memiliki masalah wajah, lanjut tanpa mencentang!")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.top, 10)
                            Spacer()
                        }
                    }
                    
                    Spacer()
                    
                    // action button
                    VStack {
                        NavigationLink(destination: QuestionView(skinProblem: skinProblem), tag: "question", selection: $session) {
                            GradientButton(title: "Ayo cek jenis kulitmu") {
                                session = "question"
                            }
                        }
                        
                        Spacer()
                            .frame(height: 24)
                        
                        NavigationLink(destination: SkinTypeView(), tag: "skintype", selection: $session) {
                            Button{
                                //sudah tau jenis kulit
                                session = "skintype"
                                
                            } label: {
                                Text("Saya sudah tau jenis kulit saya")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
            .background(kPrimaryBG)
            .navigationBarHidden(true)
        }
    }
}

struct ScreenProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenProblemView()
            .previewInterfaceOrientation(.portrait)
    }
}



