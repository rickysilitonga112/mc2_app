//
//  TabBar.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 03/07/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                Text("Home")
                Spacer()
                HStack{
                    VStack {
                            Image(systemName: "homekit")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                //Since we have five icons, we want everyone to be one-fifth of the ContentView's width
                                .frame(width: geometry.size.width/5, height: geometry.size.height/28)
                                .padding(.top, 10)
                            Text("Home")
                                .font(.footnote)
                            Spacer()
                        }
                }.frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground").shadow(radius: 2))
            }
        }
     
    }
}
