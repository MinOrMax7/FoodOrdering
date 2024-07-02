//
//  IntroView.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/1/24.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Logo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100, maxHeight: 100)
                Spacer()
                VStack(spacing: 12) {
                    Text("Little Lemon")
                        .foregroundColor(Color("71807B"))
                        .font(.custom("Markazi Text", size: 42))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Chicago")
                        .foregroundColor(Color("71807B"))
                        .font(.custom("Markazi", size: 26))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            
            Image("HeroImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 350, maxHeight: 150)
                .cornerRadius(16)
            Text("""
                We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.
                """)
                .foregroundColor(Color("71807B"))
                .font(.custom("Karla", size: 18))
                .frame(maxWidth: 380)
                .cornerRadius(16)
            
        }
    }
}

#Preview {
    IntroView()
}
