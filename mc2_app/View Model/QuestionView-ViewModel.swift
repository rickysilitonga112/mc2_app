//
//  QuestionView-ViewModel.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 29/06/22.
//

import Foundation

extension QuestionView {
    @MainActor class ViewModel: ObservableObject {
        @Published var test: Bool = false
    }
}
