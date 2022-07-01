//
//  QuestionView-ViewModel.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 29/06/22.
//

import Foundation

extension QuestionView {
    @MainActor class ViewModel: ObservableObject {
        @Published var currentIndex: Int = 0
        
        let questionList: [QuestionModel] = [
            QuestionModel(
                questionNumber: 1,
                questionTitle: "Seperti apa kulit wajahmu ketika bangun tidur?",
                choice: [
                    Choice(title: "Tampak mengilap dimana-mana", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak berminya pada area dahi, hidung, dan dagu", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak biasa dan tidak mengilap", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 2,
                questionTitle: "Seperti apa pori-pori wajahmu ketika dilihat dari depan cermin?",
                choice: [
                    Choice(title: "Pori-pori wajah tampak terlihat besar", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "jerawat"),
                    Choice(title: "Pori-pori wajah tampak terlihat pada area dahi, hidung dan dagu", image: "jerawat"),
                ]
            ),
            QuestionModel(
                questionNumber: 2,
                questionTitle: "Saat difoto apakah wajahmu terlihat mengilap?",
                choice: [
                    Choice(title: "Selalu", image: "jerawat"),
                    Choice(title: "Kadang-kadang", image: "jerawat"),
                    Choice(title: "Sering", image: "jerawat"),
                    Choice(title: "Tidak pernah", image: "jerawat")
                ]
            ),
        ]
        
        
        func getIdentificationResult() {
            // identification result
        }
        
        func setCurrentIndex(newIndex: Int) {
            self.currentIndex = newIndex
        }
        
    }
}
