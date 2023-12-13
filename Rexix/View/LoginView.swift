//
//  LoginView.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import Foundation
import SwiftUI
import Firebase

struct LoginView: View{
    @State private var username: String = ""
    @State private var password: String = ""
    @Binding var isLoggedIn: Bool
    init(isLoggedIn: Binding<Bool>) {
            self._isLoggedIn = isLoggedIn // Assign the binding here
    }
        
        
    
    var body : some View{
            VStack {
                Spacer()
                Text("Login")
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
                
                Button(action: {
                    // Implement your login logic here
                    // For example, you can check the username and password against a database
                    // For this example, let's assume the login is successful if the fields are not empty
                    
                    loginUser()
                }) {
                    Text("Login")
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
    
    
    func loginUser(){
        print(username, password)
        Auth.auth().signIn(withEmail: username, password: password){ authResult, error in
            if(error != nil){
                print("Error signing you in")
                self.isLoggedIn = false
                UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
            }
            else{
                print("User signed in successfully")
                self.isLoggedIn = true
                UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")

            }
          }
    }
}


//struct MyPreviewProvider_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
