//
//  LoginViewModel.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import Foundation
import SwiftUI
import FirebaseAuth


    final class AuthViewModel: ObservableObject {
        
        @Published var isLoggedIn: Bool {
                didSet {
                    UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
                }
            }
        
        init(isLoggedIn: Bool) {
            self.isLoggedIn = isLoggedIn
        }
    }

