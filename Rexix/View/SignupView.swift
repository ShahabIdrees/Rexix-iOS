//
//  SignupView.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import Foundation
import SwiftUI
import FirebaseAuth

struct SignupView: View{
    @State private var username: String = ""
    @State private var password: String = ""
    @Binding var isLoggedIn: Bool
    
    var body : some View{
            VStack {
                Spacer()
                Text("Sign up")
                    .font(.title)
                    .frame(width: 200, height: 50)
                
                Image(systemName: "lock")
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
                    .padding(.bottom, 50)
                Button {
                    isLoggedIn = !username.isEmpty && !password.isEmpty
                    registerUser()
                } label: {
                    Text("Sign up")
                        .font(.title)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
            
        }
        .padding()
    }
    func registerUser(){
        print(username, password)
        Auth.auth().createUser(withEmail: username, password: password){ authResult, error in
            if(error != nil){
                print("Error signing you up")
                self.isLoggedIn = false
            }
            else{
                print("User registered successfully")
                self.isLoggedIn = true
            }
          }
        
    }
}

//struct SignupPreviewProvider_Previews: PreviewProvider {
//    static var previews: some View {
//        SignupView()
//    }
//}
