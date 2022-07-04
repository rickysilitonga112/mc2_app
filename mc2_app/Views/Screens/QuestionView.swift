//
//  QuestionView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct QuestionView: View {
    // layouting part
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    @StateObject private var vm = ViewModel()
    
    @State var buttonText: String = "Selanjutnya"
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Image("WajahSatu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 160)
                }
                .frame(width: screenWidth ,height: 200, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),Color(red: 0/255, green: 20/255, blue: 34/255),]), startPoint: .center, endPoint: .bottom))
                
                
                VStack {
                    Text(vm.questionList[vm.currentQuestionIndex].questionTitle)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, kHorizontalPadding)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .background(Color.white)
                    
                    VStack(spacing: 14) {
                        ForEach(vm.questionList[vm.currentQuestionIndex].choice, id: \.id) {choice in
                            QuestionChoiceCell(choiceTitle: choice.title)
                        }
                    }
                    Spacer()
                }
                .frame(height: screenHeight / 2, alignment: .leading)
                .padding(.vertical)
                
                Spacer()
                
                VStack {
                    HStack {
                        Button {
                            // do something
                            if vm.currentQuestionIndex < vm.questionList.count - 1 {
                                vm.currentQuestionIndex += 1
                            } else {
                                print("Go to result")
                                buttonText = "Lihat Hasil"
                            }
                            
                        } label: {
                            Capsule()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 282, height: 50, alignment: .center)
                                .overlay {
                                    Text(buttonText)
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 24)
                    
                    ZStack(alignment: .center) {
                        
                        Rectangle()
                            .frame(width: 220, height: 2)
                            .foregroundColor(.white)
                        // circle
                        ZStack {
                            HStack(spacing: 24) {
                                ForEach(0 ..< vm.questionList.count, id: \.self) { item in
                                    Circle()
                                        .if(vm.currentQuestionIndex == item, transform: { view in
                                            view.fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        })
                                            .else(elseTransform: { view in
                                                view.fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255), Color(red: 255/255, green: 255/255, blue: 255/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            })
                                        .frame(width: 20, height: 20, alignment: .center)
                                        .overlay {
                                            Text("\(item + 1)")
                                                .font(.footnote)
                                                .foregroundColor((vm.currentQuestionIndex == item) ? .white : .black)
                                        }
                                        .onTapGesture {
                                            print("VM: \(vm.currentQuestionIndex)")
                                            print("Item: \(item)")
                                            
                                            if vm.currentQuestionIndex >= item + 1 {
                                                vm.currentQuestionIndex = item + 1
                                            }
                                        }
                                }
                            }
                            .frame(height: 20, alignment: .center)
                        }
                    }
//                    .frame( maxWidth: screenWidth - 48, maxHeight: 20, alignment: .center)
                    Spacer()
                }
                
                Spacer()
            }
        }
        .frame(width: screenWidth, height: screenHeight)
        .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
//        .navigationBarHidden(true)
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
