//
//  ContentViewModel.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import Foundation
import MapKit
extension ContentView{
    @MainActor class ViewModel: ObservableObject{
        @Published var name = "Ahmad"
        @Published var age = 29
        @Published var pattern = "MVC... Jk"
        
        init(){
            print("This is default initializer")
        }
        func changePattern(pName: String){
            pattern = pName
        }
    }
}
