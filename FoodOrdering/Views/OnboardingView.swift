//
//  OnboardingView.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/1/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var isLoggedIn = false
    @State var wrongInput = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 20) {
                    NavigationLink(destination:             HomeView(isLoggedIn: isLoggedIn, firstName: firstName, lastName: lastName, email: email), isActive: $isLoggedIn) {  }
                    IntroView()
                    Text("Online Ordering Registration")
                        .frame(width: 330, alignment: .leading)
                        .foregroundColor(Color("71807B"))
                        .font(.custom("Karla-Bold", size: 26))
                    VStack {
                        Text("First Name *")
                            .frame(width: 330, alignment: .leading)
                            .foregroundColor(Color("F4CE14"))
                            .font(.custom("Karla-Bold", size: 24))
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 330)
                            
                        Text("Last Name *")
                            .frame(width: 330, alignment: .leading)
                            .foregroundColor(Color("F4CE14"))
                            .font(.custom("Karla-Bold", size: 24))
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 330)
                            
                        Text("Email * ")
                            .frame(width: 330, alignment: .leading)
                            .foregroundColor(Color("F4CE14"))
                            .font(.custom("Karla-Bold", size: 24))
                        TextField("Email Address", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 330)
                    }
                    if (wrongInput) {
                        withAnimation(){
                            Text("Wrong/Empty Input for Name or Email!")
                                .frame(width: 330, alignment: .leading)
                                .foregroundColor(Color("F4CE14"))
                                .font(.custom("Karla-Bold", size: 18))
                        }
                    }
                    Button(action: {
                        if (validateUserInput(firstName: firstName, lastName: lastName, email: email) ){
                                isLoggedIn = true
                                wrongInput = false
                        } else {
                            wrongInput = true
                        }
                            
                    }) {
                        Text("Register")
                            .frame(width: 300, height: 10)
                            .padding()
                            .font(.custom("Karla-Bold", size: 24))
                            .foregroundColor(Color("F4CE14"))
                            .background(Color("71807B"))
                            .cornerRadius(10)
                        }
                        
                        .shadow(color: Color("71807B"), radius: 15, y: 5)
                        
                    }
                }
            .navigationBarBackButtonHidden()
        }
    }
    
}

func validateUserInput(firstName: String, lastName: String, email: String) -> Bool {
    guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
        return false
    }
    
    guard email.contains("@") else {
        return false
    }
    
    let email = email.split(separator: "@")
    
    guard email.count == 2 else {

        return false
    }
    
    guard email[1].contains(".") else {
        return false
    }

    return true
}
#Preview {
    OnboardingView(isLoggedIn: false)
}
