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
        
        // pake dictionary
        @Published var userAnswerList: [Int] = []
        
        let questionList: [QuestionModel] = [
            QuestionModel(
                questionNumber: 1,
                questionTitle: "Seperti apa kulit wajahmu ketika bangun tidur?",
                choices: [
                    Choice(title: "Tampak mengilap dimana-mana", image: "PAGE_1A"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "PAGE_1B"),
                    Choice(title: "Kulit wajah tampak berminya pada area dahi, hidung, dan dagu", image: "PAGE_1C"),
                    Choice(title: "Kulit wajah tampak biasa dan tidak mengilap", image: "PAGE_1E")
                ]
            ),
            QuestionModel(
                questionNumber: 2,
                questionTitle: "Seperti apa pori-pori wajahmu ketika dilihat dari depan cermin?",
                choices: [
                    Choice(title: "Pori-pori wajah tampak terlihat besar", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "jerawat"),
                    Choice(title: "Pori-pori wajah tampak terlihat pada area dahi, hidung dan dagu", image: "jerawat"),
                ]
            ),
            QuestionModel(
                questionNumber: 3,
                questionTitle: "Seperti apa tekstur kulit wajahmu?",
                choices: [
                    Choice(title: "Terasa tidak rata dan sedikit datar", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "jerawat"),
                    Choice(title: "Terasa kasar dan kencang", image: "jerawat"),
                    Choice(title: "Terasa kasar, berminyak, ataupun lembut pada area yang berbeda", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 4,
                questionTitle: "Saat difoto apakah wajahmu terlihat mengilap?",
                choices: [
                    Choice(title: "Selalu", image: "jerawat"),
                    Choice(title: "Kadang-kadang", image: "jerawat"),
                    Choice(title: "Sering", image: "jerawat"),
                    Choice(title: "Tidak pernah", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 5,
                questionTitle: "Saat berada di lingkungan dengan kelembaban rendah, bagaimana kulit wajahmu? (saat tidak pakai produk apapun)",
                choices: [
                    Choice(title: "Terlihat mengilap, dan saya merasa membutuhkan moisturizers", image: "jerawat"),
                    Choice(title: "Saya merasa biasa-biasa saja", image: "jerawat"),
                    Choice(title: "Terasa kencang dan kaku pada area wajah yang kering", image: "jerawat"),
                    Choice(title: "Terasa sangat kering dan pecah-pecah", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 6,
                questionTitle: "Apakah wajahmu pernah mengalami komedo hitam atau komedo putih?",
                choices: [
                    Choice(title: "Selalu", image: "jerawat"),
                    Choice(title: "Jarang", image: "jerawat"),
                    Choice(title: "Kadang-kadang", image: "jerawat"),
                    Choice(title: "Tidak pernah", image: "jerawat")
                ]
            ),
            
        ]
        
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

        func getIdentificationResult() {
            var answerA: Int = 0
            var answerB: Int = 0
            var answerC: Int = 0
            var answerD: Int = 0
            
            var finalSkinType: UserSkinType
            
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
                finalSkinType = .berminyak
            } else if (answerB > answerA && answerB > answerC && answerA > answerD) {
                finalSkinType = .normal
            } else if (answerC > answerA && answerC > answerB && answerC > answerD) {
                finalSkinType = .kombinasi
            } else if (answerD > answerA && answerD > answerB && answerD > answerC) {
                finalSkinType = .kering
            } else if (answerA == answerB) {
                finalSkinType = .normalBerminyak
            } else if (answerB == answerD) {
                finalSkinType = .normalKering
            } else {
                finalSkinType = .kombinasi
            }
            
            print("============================================")
            print(finalSkinType)
            print("============================================")
        }
    }
}
