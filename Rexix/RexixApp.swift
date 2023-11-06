//
//  RexixApp.swift
//  Rexix
//
//  Created by Apple on 06/11/2023.
//

import SwiftUI

@main
struct RexixApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
