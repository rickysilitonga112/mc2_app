//
//  QuestionView-ViewModel.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 29/06/22.
//

import Foundation
import SwiftUI

extension QuestionView {
    @MainActor class ViewModel: ObservableObject {
        @Published var currentQuestionIndex: Int = 0
        @Published var currentAnswerIndex: Int = 0
        @Published var userAnswerList: [Int] = []
        
        let questionList: [QuestionModel] = QuestionModel.getQuestionList()
        
        func setCurrentIndex(newIndex: Int) {
            self.currentQuestionIndex = newIndex
        }
        
        func getAnswerIndex(answerTitle: String) -> Int {
            let choices = questionList[currentQuestionIndex].choices
            var choiceIndex = -1
            for (index, choice) in choices.enumerated() {
                if choice.title == answerTitle {
                    choiceIndex = index
                    
                }
            }
            
            return choiceIndex
        }
        
        
        
        func getCurrentQuestion() {
            // return current question
        }
        
        func getCurrentAnswer() {
            // return current anwer
        }

        func getIdentificationResult() -> String {
            var answerA: Int = 0
            var answerB: Int = 0
            var answerC: Int = 0
            var answerD: Int = 0
            
            var finalSkinType: String
            
            for answer in userAnswerList {
                if answer == 0 {
                    answerA += 1
                } else if answer == 1 {
                    answerB += 1
                } else if answer == 2 {
                    answerC += 1
                } else {
                    answerD += 1
                }
            }
            
            // MARK: - DEBUGGING
            print("Answer A: \(answerA)")
            print("Answer B: \(answerB)")
            print("Answer C: \(answerC)")
            print("Answer D: \(answerD)")
            
            
            
            // get result based on answer
            if (answerA > answerB && answerA > answerC && answerA > answerD) {
                finalSkinType = "berminyak"
            } else if (answerB > answerA && answerB > answerC && answerA > answerD) {
                finalSkinType = "normal"
            } else if (answerC > answerA && answerC > answerB && answerC > answerD) {
                finalSkinType = "kombinasi"
            } else if (answerD > answerA && answerD > answerB && answerD > answerC) {
                finalSkinType = "kering"
            } else if (answerA == answerB) {
                finalSkinType = "normal cenderung berminyak"
            } else if (answerB == answerD) {
                finalSkinType = "normal cenderung kering"
            } else {
                finalSkinType = "kombinasi"
            }
            
//            print("============================================")
//            print(finalSkinType)
//            print("============================================")
            
            return finalSkinType
        }
        
        
        func getResultInfo(skinProblem: SkinProblem, skinType: String) -> String {
            switch skinProblem {
            case .none:
                return "Kamu memiliki jenis kulit \(skinType)"
            default:
                return "Kamu memiliki jenis kulit **\(skinType)** dan permasalahan kulit wajahmu **\(skinProblem)**"
            }
        }
    }
}

