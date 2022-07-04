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
                questionNumber: 3,
                questionTitle: "Seperti apa tekstur kulit wajahmu?",
                choice: [
                    Choice(title: "Terasa tidak rata dan sedikit datar", image: "jerawat"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "jerawat"),
                    Choice(title: "Terasa kasar dan kencang", image: "jerawat"),
                    Choice(title: "Terasa kasar, berminyak, ataupun lembut pada area yang berbeda", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 4,
                questionTitle: "Saat difoto apakah wajahmu terlihat mengilap?",
                choice: [
                    Choice(title: "Selalu", image: "jerawat"),
                    Choice(title: "Kadang-kadang", image: "jerawat"),
                    Choice(title: "Sering", image: "jerawat"),
                    Choice(title: "Tidak pernah", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 5,
                questionTitle: "Saat berada di lingkungan dengan kelembaban rendah, bagaimana kulit wajahmu? (saat tidak pakai produk apapun)",
                choice: [
                    Choice(title: "Terlihat mengilap, dan saya merasa membutuhkan moisturizers", image: "jerawat"),
                    Choice(title: "Saya merasa biasa-biasa saja", image: "jerawat"),
                    Choice(title: "Terasa kencang dan kaku pada area wajah yang kering", image: "jerawat"),
                    Choice(title: "Terasa sangat kering dan pecah-pecah", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 6,
                questionTitle: "Apakah wajahmu pernah mengalami komedo hitam atau komedo putih?",
                choice: [
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

        
        func getIdentificationResult() {
            // identification result
            
        }
    }
}
