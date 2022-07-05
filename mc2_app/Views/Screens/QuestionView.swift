//
//  QuestionView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct QuestionView: View {
    
    let skinProblem: SkinProblem
    // layouting part
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    @StateObject private var vm = ViewModel()
    
    @State var buttonText: String = "Selanjutnya"
    @State var selectedAnswer: String = ""
    @State var answerIndex: Int = -1
    @State var resultPageString: String = ""
    @State var session: String? = nil
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Image("PAGE_1A")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 160)
                        .padding(.top)
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
                    
                    VStack(spacing: 14) {
                        ForEach(vm.questionList[vm.currentQuestionIndex].choices, id: \.id) { choice in
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .if(selectedAnswer == choice.title) { cell in
                                        cell.fill(kCellGradientBg)
                                    }
                                    .opacity(0.26)
                                    .shadow(radius: 3)
                                    .border(.white, width: (selectedAnswer == choice.title) ? 1.5 : 0.5)
                                    
                                
                                Text(choice.title)
                                    .multilineTextAlignment(.leading)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal, 20)
                                
                                
                            }
                            .frame(height: 68, alignment: .leading)
                            .padding(.horizontal, kHorizontalPadding)
                            .onTapGesture {
                                selectedAnswer = choice.title
                                if selectedAnswer != "" {
                                    answerIndex = vm.getAnswerIndex(answerTitle: choice.title)
                                    
                                    // MARK: - Debugging
                                    print(answerIndex)
                                    
                                    if vm.currentQuestionIndex == vm.questionList.count - 1 {
                                        buttonText = "Lihat hasil"
                                    }
                                }
                                
                            }
                        }
                    }
                    Spacer()
                }
                .frame(height: screenHeight / 2, alignment: .leading)
                .padding(.vertical)
                
                Spacer()
                
                VStack {
                    HStack {
                        NavigationLink(destination: IdentificationResultView(result: resultPageString), tag: "result", selection: $session) {
                            Button {
                                // do something
                                if selectedAnswer != "" {
                                    if vm.currentQuestionIndex < vm.questionList.count - 1 {
                                        vm.currentQuestionIndex += 1
                                        // simpan jawaban user
                                        print("tambahkan jawaban user ke array jawaban user")
                                        
                                        if vm.userAnswerList.count <= vm.currentQuestionIndex {
                                            vm.userAnswerList.append(answerIndex)
                                        } else {
                                            vm.userAnswerList[vm.currentQuestionIndex - 1] = answerIndex
                                        }
                                        
                                        // debug
                                        print(vm.userAnswerList)
                                        
                                        if vm.currentQuestionIndex == vm.questionList.count {
                                            vm.userAnswerList.append(answerIndex)
                                            print(vm.userAnswerList)
                                            print("go to new page")
                                        }
                                        
                                        selectedAnswer = ""
                                    } else {
                                        vm.userAnswerList.append(answerIndex)
                                        print(vm.userAnswerList)
                                        print("go to new page")
                                        
                                        // MARK: - go to new page
                                        let skinType = vm.getIdentificationResult()
                                        
                                        resultPageString = vm.getResultInfo(skinProblem: skinProblem, skinType: skinType)
                                        session = "result"
                                        
                                        // set selected answer agar kosong
                                        selectedAnswer = ""
                                        
                                    }
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
                                            // MARK: - Debugging
//                                            print("VM: \(vm.currentQuestionIndex)")
//                                            print("Item: \(item)")
                                            
                                            if vm.currentQuestionIndex >= item {
                                                vm.currentQuestionIndex = item 
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
        QuestionView(skinProblem: .berjerawat)
    }
}
