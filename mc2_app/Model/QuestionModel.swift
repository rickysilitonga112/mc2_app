//
//  QuestionModel.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import Foundation

struct QuestionModel {
    // question model
    let questionNumber: Int
    let questionTitle: String
    let choice: [Choice]
}


struct Choice {
    let title: String
    let image: String
}

