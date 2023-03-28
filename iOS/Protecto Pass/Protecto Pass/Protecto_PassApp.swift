//
//  Protecto_PassApp.swift
//  Protecto Pass
//
//  Created by Julian Schumacher on 28.03.23.
//

import SwiftUI

@main
internal struct Protecto_PassApp: App {
    private let persistenceController : PersistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            if true {
                WelcomeView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            } else {
                Home()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
