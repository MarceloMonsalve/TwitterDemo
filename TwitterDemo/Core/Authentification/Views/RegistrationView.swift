//
//  RegistrationView.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/18/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get Started.", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputFieldView(imageName: "person",
                                     placeHolderText: "Full Name",
                                     text: $fullname)
                CustomInputFieldView(imageName: "person",
                                     placeHolderText: "Username",
                                     text: $username)
                CustomInputFieldView(imageName: "envelope",
                                     placeHolderText: "Email",
                                     text: $email)
                CustomInputFieldView(imageName: "lock",
                                     placeHolderText: "Password",
                                     text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            Button {
                print("sign up here")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.caption)
                    Text("Sign In")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 32)
            }

        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
