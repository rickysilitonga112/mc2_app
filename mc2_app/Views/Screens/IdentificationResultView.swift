//
//  IdentificationResultView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct IdentificationResultView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    @State var session: String? = nil
    
    
    let result: String
    var body: some View {
        
        ZStack{
            VStack{
                VStack{
                    Spacer()
                        .frame(height: 500)
                    RoundedRectangle(cornerRadius: 24)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.40), Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.13)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .opacity(0.26)
                        .shadow(radius: 3)
                        .frame(width: 198, height: 232)
                        .overlay {
                            Image("Jerawatt")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 124)
                        }
                    
                    Text("Hasil Analisa")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    Spacer()
                    Text(.init(result))
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .frame(width: screenWidth - 56, height: 90)
                        .foregroundColor(.white)
                
                    
                    VStack {
                        Text("Gunakan cleanser yang mengandung bahan kimia untuk membuat chum bucket.")
                            .frame(width: 330, alignment: .topLeading)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top, 5)
                        
                        Text("Gunakan cleanser yang mengandung bahan kimia untuk membuat chum bucket.")
                            .frame(width: 330, alignment: .topLeading)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top, 5)
                        
                        Spacer()
                    }
                    .frame(height: screenHeight / 4, alignment: .leading)
                    .padding(.top, 35)
                    
                    Spacer()
                    NavigationLink(destination: DashboardView(), tag: "dashboard", selection: $session) {
                        
                        Button {
                            // do something
                            session = "dashboard"
                            
                        } label: {
                            Capsule()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 282, height: 50, alignment: .center)
                                .overlay {
                                    Text("Lihat rekomendasi produk")
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                }
                        }
                    }
                    Spacer()
                        .frame(height: 25)
                    
                    NavigationLink(destination: RoutinePageView(), tag: "routine", selection: $session) {
                        Button {
                            // do something
                            session = "routine"
                        } label: {
                            Text("Ikuti challange 21 hari rutin skincare")
                                .foregroundColor(.white)
                        }
                    }
                
                }
                .frame(width: screenWidth ,height: 220, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37),
                    Color(red: 0/255, green: 20/255, blue: 34/255),
                ]), startPoint: .center, endPoint: .bottom))
                
                Spacer()
            }
        }
        .frame(width: screenWidth, height: screenHeight)
        .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
    }
    
    struct IdentificationResultView_Previews: PreviewProvider {
        static var previews: some View {
            IdentificationResultView(result: "Kamu memiliki jenis kulit **berminyak** dan permasalahan kulit wajahmu **berjerawat**")
        }
    }
}
