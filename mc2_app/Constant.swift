//
//  Constant.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 30/06/22.
//

import Foundation
import SwiftUI

enum SkinProblem {
    case none
    case berjerawat
    case kusam
}

enum UserAnswer {
    case a
    case b
    case c
    case d
}
enum UserSkinType {
    case normal
    case berminyak
    case kering
    case kombinasi
    case normalBerminyak
    case normalKering
}

let kHorizontalPadding: CGFloat = 24

// color
let kGradientBackgroundColor = LinearGradient(gradient: Gradient(colors: [
    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
    Color(red: 0/255, green: 20/255, blue: 34/255),
    ]), startPoint: .center, endPoint: .bottom)

let kRedGradientBG = LinearGradient(gradient: Gradient(colors: [
    Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40),
    Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)
    ]), startPoint: .topLeading, endPoint: .bottomTrailing)

let primaryBG = Color(red: 0/255, green: 20/255, blue: 34/255)
