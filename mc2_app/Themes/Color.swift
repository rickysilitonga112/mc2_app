//
//  Color.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 11/07/22.
//

import Foundation
import SwiftUI


let kPrimaryBG = Color(red: 0/255, green: 20/255, blue: 34/255)


let kGradientBG = LinearGradient(gradient: Gradient(colors: [
    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
    Color(red: 0/255, green: 20/255, blue: 34/255),
]), startPoint: .center, endPoint: .bottom)

let kRedGradientBG = LinearGradient(gradient: Gradient(colors: [Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37), Color(red: 0/255, green: 20/255, blue: 34/255)]), startPoint: .center, endPoint: .bottom)

let kCellGradientBg = LinearGradient(gradient: Gradient(colors: [
    Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.34),
    Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)
]), startPoint: .topLeading, endPoint: .bottomTrailing)

let kButtonGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)



