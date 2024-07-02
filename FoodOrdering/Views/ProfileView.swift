//
//  ProfileView.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/1/24.
//

import SwiftUI

struct ProfileView: View {
    @State var isLoggedIn: Bool
    @State var firstName: String
    @State var lastName: String
    @State var email: String
    @State var isLoggedOut = false
    
    // State variables for user profile fields.
    @State private var orderStatuses = true
    @State private var passwordChanges = true
    @State private var specialOffers = true
    @State private var newsletter = true
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            NavigationLink(
                destination: OnboardingView(),
                isActive: $isLoggedOut) { }
                VStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 90)
                    Text("Personal Information")
                        .frame(width: 330, alignment: .leading)
                        .foregroundColor(Color("495E57"))
                        .font(.custom("Karla-Bold", size: 28))
                
                    HStack {
                        Image("Profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 110, height: 110, alignment: .leading)
                     
                        Button(action: {

                        }) {
                          Text("Change")
                            .frame(width: 75, height: 10)
                            .padding()
                            .font(.custom("Karla-Bold", size: 20))
                            .foregroundColor(Color("F4CE14"))
                            .background(Color("71807B"))
                            .cornerRadius(10)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Text("Remove")
                                .frame(width: 75, height: 10)
                                .padding()
                                .font(.custom("Karla-Bold", size: 20))
                                .foregroundColor(Color("AFAFAF"))
                                .background(Color("71807B"))
                                .cornerRadius(10)
                           }
                    }

                    
                    VStack {
                        Text("First Name")
                            .frame(width: 330, alignment: .leading)
                            .foregroundColor(Color("495E57"))
                            .font(.custom("Karla-Bold", size: 20))
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 330)
                            
                        Text("Last Name")
                            .frame(width: 330, alignment: .leading)
                            .foregroundColor(Color("495E57"))
                            .font(.custom("Karla-Bold", size: 20))
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 330)
                            
                        Text("Email")
                            .frame(width: 330, alignment: .leading)
                            .foregroundColor(Color("495E57"))
                            .font(.custom("Karla-Bold", size: 20))
                        TextField("Email Address", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 330)
                    }
                    
                    Text("Email Notifications")
                        .frame(width: 330, alignment: .leading)
                        .foregroundColor(Color("495E57"))
                        .font(.custom("Karla-Bold", size: 20))
                    VStack {
                        // Toggles for email notification settings.
                        Toggle("Order statuses", isOn: $orderStatuses)
                        Toggle("Password changes", isOn: $passwordChanges)
                        Toggle("Special offers", isOn: $specialOffers)
                        Toggle("Newsletter", isOn: $newsletter)
                    }
                    .padding()
                    .font(Font.leadText())
                    .foregroundColor(.primaryColor1)
                    .frame(width: 350)
                    
                    Button(action: {
                        isLoggedOut = true
                        isLoggedIn = false
                        firstName = "Your Name"
                        lastName = ""
                        email = ""
                    }) {
                      Text("Log Out")
                            .frame(width: 300, height: 10)
                        .padding()
                        .font(.custom("Karla-Bold", size: 24))
                        .foregroundColor(Color("F4CE14"))
                        .background(Color("71807B"))
                        .cornerRadius(10)
                    }
                }
        }

    }
}

#Preview {
        
    ProfileView(isLoggedIn: true, firstName: "Magan", lastName: "Shieh", email: "Hithere@ex.com")

}
