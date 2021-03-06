//
//  QuestionModel.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import Foundation

struct QuestionModel: Identifiable {
    let id = UUID()
    // question model
    let questionNumber: Int
    let questionTitle: String
    let choices: [Choice]
    
    
    static func getQuestionList() -> [QuestionModel] {
        let questionList: [QuestionModel] = [
            QuestionModel(
                questionNumber: 1,
                questionTitle: "Seperti apa kulit wajahmu ketika bangun tidur?",
                choices: [
                    Choice(title: "Tampak mengilap dan berminyak dimana-mana", image: "PAGE_1A"),
                    Choice(title: "Kulit wajah tampak sedikit mengilap", image: "PAGE_1B"),
                    Choice(title: "Kulit wajah tampak berminyak pada area dahi, hidung dan dagu", image: "PAGE_1C"),
                    Choice(title: "Kulit wajah tampak biasa dan tidak mengilap", image: "PAGE_1E")
                ]
            ),
            QuestionModel(
                questionNumber: 2,
                questionTitle: "Seperti apa pori-pori wajahmu ketika dilihat dari depan cermin?",
                choices: [
                    Choice(title: "Pori-pori wajah tampak terlihat besar", image: "jerawat"),
                    Choice(title: "Pori-pori wajah hampir tidak terlihat", image: "jerawat"),
                    Choice(title: "Pori-pori wajah tampak terlihat pada area dahi, hidung dan dagu", image: "jerawat"),
                    Choice(title: "Pori-pori wajah terlihat samar-samar", image: "jerawat")
                ]
            ),
            QuestionModel(
                questionNumber: 3,
                questionTitle: "Seperti apa tekstur kulit wajahmu?",
                choices: [
                    Choice(title: "Terasa tidak rata dan sedikit kasar", image: "jerawat"),
                    Choice(title: "Terasa lembut dan halus", image: "jerawat"),
                    Choice(title: "Terasa kasar, berminyak, atau pun lembut pada area yang berbeda", image: "jerawat"),
                    Choice(title: "Terasa kering dan pecah-pecah", image: "jerawat")
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
        return questionList
    }
}



