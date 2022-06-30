//
//  IdentificationQuestion.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 30/06/22.
//

import SwiftUI

struct IdentificationQuestion: View {
    var body: some View {
    VStack{
       Image("WajahSatu")
            .resizable()
            .frame(width: 134, height: 188)
        Text("Seperti apa Kulit wajahmu ketika bangun tidur?")
            .font(.title3)
            .fontWeight(.bold)
        
        
    }
}

struct IdentificationQuestion_Previews: PreviewProvider {
    static var previews: some View {
        IdentificationQuestion()
    }
  }
}
