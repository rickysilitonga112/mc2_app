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
}


struct Choice: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}

