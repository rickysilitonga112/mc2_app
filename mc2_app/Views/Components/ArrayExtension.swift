//
//  ArrayExtension.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 04/07/22.
//

import Foundation

extension Array where Element: Equatable {
    func indexes(of element: Element) -> [Int] {
        return self.enumerated().filter({ element == $0.element }).map({ $0.offset })
    }
}
