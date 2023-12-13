//
//  RexixApp.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import SwiftUI
import Firebase


@main
struct RexixApp: App {
    init() {
        FirebaseApp.configure()
//        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        }
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
