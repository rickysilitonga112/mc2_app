//
//  RoutinePageView3.swift
//  mc2_app
//
//  Created by Hisyam sanusi on 03/07/22.
//

import SwiftUI

struct RoutinePageView3: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    let cleanser: [String] = ["Kahf- Hydro Balance", "Garnier Men- Oil Clear", "Nivea men - Deep", "Ponds men - acne oil control"]
    var body: some View {
            ZStack{
                VStack{
                    ZStack{
                        VStack{
                            Text("Silahkan masukan nama produk cleansermu")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: screenWidth - 56, height: 56, alignment: .leading)
                    }
                        .frame(width: screenWidth ,height: 220, alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: [
                            Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                            Color(red: 0/255, green: 20/255, blue: 34/255),
                        ]), startPoint: .center, endPoint: .bottom))
                    }
            
                    GroupBox(){
                                DisclosureGroup("CLEANSER") {
                                    ForEach(0..<cleanser.count, id: \.self){ index in
                                        Divider()
                                            .padding(.vertical, 2)
                                        HStack{
                                            Group{
                                                Image(systemName: "info.circle")
                                                Text(cleanser[index])
                                            }//: GROUP
                                            .foregroundColor(.gray)
                                            .font(.system(.body).bold())
                                            
                                            Spacer(minLength: 25)
                                        }//: HSTACK
                                    }//: LOOP
                                }//: DISCLOSURE
                            }//: BOX
                    
                    HStack{
                        Spacer()
                            .frame(width: 9)
                        Button {
                            // add item
                        } label: {
                            Image("addButton")
                                .resizable()
                                .frame(width: 29, height: 29)
                        }
                        Text("Tambah Sunscreen")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                            .frame(height: 70)
                    }
                    
                    Spacer()
                    Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 282, height: 50, alignment: .center)
                        .overlay {
                            Text("Mulai tantangan")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                        }
                    Spacer()
                }
                .frame(width: screenWidth, height: screenHeight)
                .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
            }
      
        
       
    }
}


struct RoutinePageView3_Previews: PreviewProvider {
    static var previews: some View {
        RoutinePageView3()
    }
}
