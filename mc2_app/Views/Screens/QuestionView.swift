//
//  QuestionView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct QuestionView: View {
    @StateObject private var vm = ViewModel()
    
    // layouting part
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                ZStack {
                    Image("WajahSatu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 160)
                }
                .frame(width: screenWidth ,height: 220, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),Color(red: 0/255, green: 20/255, blue: 34/255),]), startPoint: .center, endPoint: .bottom))
                
                
                VStack {
                    Text(vm.questionList[vm.currentIndex].questionTitle)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, kHorizontalPadding)
                        .padding(.top, 20)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .background(Color.white)
                    
                    
                    VStack(spacing: 14) {
                        ForEach(vm.questionList[vm.currentIndex].choice, id: \.id) {choice in
                            QuestionChoiceCell()
                        }
                    }
                    Spacer()
                } .frame(height: screenHeight / 2, alignment: .leading)
                
                HStack {
                    Spacer()
                    Button {
                        // do something
                        if vm.currentIndex < vm.questionList.count {
                            vm.currentIndex = vm.currentIndex + 1
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
                    
                    Spacer()
                } .padding() .padding(.top, 10)
                
                ZStack(alignment: .center) {
                    Divider()
                        .background(.white)
                        .frame(width: 220, height: 4, alignment: .center)
                    
                    // circle
                    HStack(spacing: 24) {
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 20, height: 20, alignment: .center)
                            .overlay {
                                Text("1")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 20, height: 20, alignment: .center)
                            .overlay {
                                Text("2")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 20, height: 20, alignment: .center)
                            .overlay {
                                Text("3")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 20, height: 20, alignment: .center)
                            .overlay {
                                Text("4")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                        Circle()
                            .fill(.gray)
                            .frame(width: 20, height: 20, alignment: .center)
                            .overlay {
                                Text("5")
                                    .font(.footnote)
                                    .foregroundColor(.black)
                            }
                        
                        Circle()
                            .fill(.gray)
                            .frame(width: 20, height: 20, alignment: .center)
                            .overlay {
                                Text("6")
                                    .font(.footnote)
                                    .foregroundColor(.black)
                            }
                    }
                    .frame(height: 20, alignment: .center)
                } .frame( width: screenWidth - 48, height: 20, alignment: .center) .padding()
                
                Spacer()
                
            }
            //            .frame(width: screenWidth, height: screenHeight, alignment: .top)
        }
        .frame(width: screenWidth, height: screenHeight)
        .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}


struct QuestionChoiceCell: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.34), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(0.26)
                .shadow(radius: 3)
            
            Text("Tampak mengkilap dan berminyak dimana-mana")
                .multilineTextAlignment(.leading)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(height: 70, alignment: .center)
        .padding(.horizontal, kHorizontalPadding)
    }
}
