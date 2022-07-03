//
//  ViewExtension.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 03/07/22.
//

import Foundation
import SwiftUI

extension View {
    func `if`<TrueContent>(_ condition: Bool, @ViewBuilder  transform: @escaping (Self) -> TrueContent)
    -> ConditionalWrapper1<Self, TrueContent> where TrueContent: View {
        ConditionalWrapper1<Self, TrueContent>(content: { self },
                                               conditional: Conditional<Self,
                                               TrueContent>(condition: condition,
                                                            transform: transform)
        )
    }
    
    func `if`<TrueContent: View, Item>(`let` item: Item?, @ViewBuilder transform: @escaping (Self, Item) -> TrueContent)
    -> ConditionalWrapper1<Self, TrueContent> {
        if let item = item {
            return self.if(true, transform: {
                transform($0, item)
            })
        } else {
            return self.if(false, transform: {
                transform($0, item!)
            })
        }
    }
}

struct Conditional<Content: View, Trans: View> {
    let condition: Bool
    let transform: (Content) -> Trans
}

struct ConditionalWrapper1<Content: View, Trans1: View>: View {
    var content: () -> Content
    var conditional: Conditional<Content, Trans1>
    
    func elseIf<Trans2: View>(_ condition: Bool, @ViewBuilder transform: @escaping (Content) -> Trans2)
    -> ConditionalWrapper2<Content, Trans1, Trans2> {
        ConditionalWrapper2(content: content,
                            conditionals: (conditional,
                                           Conditional(condition: condition,
                                                       transform: transform)))
    }
    
    func elseIf<Trans2: View, Item>(`let` item: Item?, @ViewBuilder transform: @escaping (Content, Item) -> Trans2)
    -> ConditionalWrapper2<Content, Trans1, Trans2> {
        let optionalConditional: Conditional<Content, Trans2>
        if let item = item {
            optionalConditional = Conditional(condition: true) {
                transform($0, item)
            }
        } else {
            optionalConditional = Conditional(condition: false) {
                transform($0, item!)
            }
        }
        return ConditionalWrapper2(content: content,
                                   conditionals: (conditional, optionalConditional))
    }
    
    func `else`<ElseContent: View>(@ViewBuilder elseTransform: @escaping (Content) -> ElseContent)
    -> ConditionalWrapper2<Content, Trans1, ElseContent> {
        ConditionalWrapper2(content: content,
                            conditionals: (conditional,
                                           Conditional(condition: !conditional.condition,
                                                       transform: elseTransform)
                                          )
        )
    }
    
    var body: some View {
        Group {
            if conditional.condition {
                conditional.transform(content())
            } else {
                content()
            }
        }
    }
}

struct ConditionalWrapper2<Content: View, Trans1: View, Trans2: View>: View {
    var content: () -> Content
    var conditionals: (Conditional<Content, Trans1>, Conditional<Content, Trans2>)
    
    func `else`<ElseContent: View>(@ViewBuilder elseTransform: (Content) -> ElseContent) -> some View {
        Group {
            if conditionals.0.condition {
                conditionals.0.transform(content())
            } else if conditionals.1.condition {
                conditionals.1.transform(content())
            } else {
                elseTransform(content())
            }
        }
    }
    
    var body: some View {
        self.else { $0 }
    }
}
