//
//  ContentView.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @ObservedObject var loginViewModel = AuthViewModel(isLoggedIn: UserDefaults.standard.bool(forKey: "isLoggedIn"))
    @StateObject private var viewModel = ViewModel()
    @State private var isLoggedIn: Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")
    @State private var selectedTab: Tab = .house
    
    let userDefaults = UserDefaults.standard
    init(){
        //UserDefaults.standard.set(false, forKey: "isLoggedIn")
        print(isLoggedIn)
    }
    
    var body: some View{
       
            
            
            if !isLoggedIn {
                LoginView(isLoggedIn: self.$isLoggedIn )
            }
            else {
                ZStack{
                    VStack{
                        TabView(selection: $selectedTab) {
                            switch selectedTab {
                            case .house:
                                NavigationStack {
                                    HomeView()
                                }
                            case .message:
                                NavigationStack {
                                    ReviewView()
                                }
                            case .person:
                                NavigationStack {
                                    ProfileView()
                                }
                            case .magnifyingglass:
                                //SignupView(isLoggedIn: self.$isLoggedIn)
                                NavigationStack {
                                    SearchView()
                                }
                            case .gearshape:
                                NavigationStack {
                                    SettingsView()
                                }
                            }
                        }
                    }
                    VStack{
                        Spacer()
                        CustomTabBar(selectedTab: $selectedTab).offset(y:25)
                    }
                }
            
        }
        
        
//        NavigationStack {
//            Text("Navigate to")
//            NavigationLink(destination: SignupView()) {
//                Text("Sign up")
//            }
//
//            NavigationLink(destination: LoginView()) {
//                Text("Login")
//            }
//
//            NavigationLink(destination: HomeView()) {
//                Text("Home")
//            }
//
//            .navigationBarTitle("Home")
//        }
    }
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

