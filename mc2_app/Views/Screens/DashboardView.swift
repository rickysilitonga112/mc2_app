//
//  DashboardView.swift
//  mc2_app
//
//  Created by Ricky Silitonga on 24/06/22.
//

import SwiftUI

struct DashboardView: View {
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    @State var skinType: String = ""
    @State var skinProblem: String = ""
    @State var session: String? = nil
    
    
    var skincareCategories: [SkincareCategory] = [
        SkincareCategory(title: "Cleanser", image: "CLEANSER", bg: Color(red: 172/255, green: 79/255, blue: 79/255)),
        SkincareCategory(title: "Serum", image: "SERUM", bg: Color(red: 145/255, green: 162/255, blue: 127/255)),
        SkincareCategory(title: "Moisturizer", image: "MOISTURIZE", bg: Color(red: 134/255, green: 124/255, blue: 227/255)),
        SkincareCategory(title: "Sunscreen", image: "SUNSCREEN", bg: Color(red: 170/255, green: 47/255, blue: 133/255)),
    ]
    
    var body: some View {
        ZStack{
            VStack {
                ScrollView(.vertical) {
                    VStack {
                        Text("Rekomendasi Produk")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal, kHorizontalPadding)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    
                        Text("Produk yang direkomendasikan berdasarkan hasil identifikasi wajah yang sudah dilakukan. Produk ini merupakan contoh dan tidak diwajibkan untuk membeli produk yang sama.")
                            .foregroundColor(.white)
                            .font(.body)
                            .padding(.horizontal, kHorizontalPadding)
                            .padding(.top)
                        
                    }
                    .frame(width: screenWidth ,height: 300, alignment: .leading)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 248/255, green: 55/255, blue: 15/255, opacity: 0.37), Color(red: 0/255, green: 20/255, blue: 34/255)]), startPoint: .center, endPoint: .bottom))
                    
                    
                    HStack {
                        Text("Kategori Skincare")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 40) {
                            ForEach(0 ..< skincareCategories.count, id: \.self) { index in
                                VStack {
                                    Circle()
                                        .fill(skincareCategories[index].bg)
                                        .frame(width: 70, height: 70)
                                        .overlay(
                                            Image(skincareCategories[index].image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 27)
                                        )
                                    
                                    Text(skincareCategories[index].title)
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .padding(.top, 8)
                                }
                            }
                                
                        }
                    }
                    .padding(.horizontal, kHorizontalPadding)
                    .padding(.top, 35)
                    
                    Spacer()
                        .frame(height: 30)
                        
                    Rectangle()
                        .frame(width: screenWidth * 0.9, height: 2)
                        .background(Color(red: 117/255, green: 117/255, blue: 117/255))
                    
                    
                    HStack {
                        Text("Produk Populer")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal, kHorizontalPadding)
                    .padding(.top, 35)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 30) {
                            ForEach(0 ..< 5) { item in
                                RoundedRectangle(cornerRadius: 35)
                                    .fill(.white)
                                    .frame(width: 180, height: 285, alignment: .center)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 35)
                                            .fill(Color(red: 0/255, green: 20/255, blue: 34/255))
                                            .frame(width: 178, height: 283, alignment: .center)
                                            .overlay(
                                                VStack {
                                                    RoundedRectangle(cornerRadius: 35)
                                                        .fill(.white)
                                                    .frame(width: 178, height: 170)
                                                    .overlay(
                                                        Image("GARNIER_CLEANSER")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 140)
                                                    )
                                                    
                                                    
                                                    Text("GARNIER_CLEANSER Care Face Wash\n100ml")
                                                        .font(.footnote)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                        .padding(.top, 10)
                                                        .padding(.horizontal)
                                                    
                                                    HStack {
                                                        Text("Rp37.500")
                                                            .font(.footnote)
                                                            .fontWeight(.medium)
                                                            .foregroundColor(Color(red: 255/255, green: 184/255, blue: 0/255))
                                                        
                                                        Spacer()
                                                    }
                                                    .padding(.horizontal, 22)
                                                    .padding(.top, 6)
                                                    .frame(width: 178, alignment: .leading)
                                                    
                                                    Spacer()
                                                       
                                                }
                                                    
                                            )
                                        
                                )
                            }
                        }
                    } .padding(.horizontal, kHorizontalPadding)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(destination: RoutinePageView(), tag: "routine", selection: $session) {
                        Button {
                            // do something
                            session = "routine"
                        } label: {
                            Capsule()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 52/255, blue: 2/255), Color(red: 143/255, green: 76/255, blue: 195/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: screenWidth - (kHorizontalPadding * 2), height: 50, alignment: .center)
                                .overlay {
                                    Text("Ikuti Challange 21 Hari Skincare")
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                }
                                .padding(.top, 40)
                                .padding(.bottom, 30)
                            
                        }
                    }
                }
                Spacer()
                
            }
            .background(Color(red: 0/255, green: 20/255, blue: 34/255).edgesIgnoringSafeArea(.all))
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(skinType: "berminyak", skinProblem: "kusam")
    }
}


struct SkincareCategory {
    let title: String
    let image: String
    let bg: Color
}
