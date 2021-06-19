//
//  WarrantyApp.swift
//  Warranty
//
//  Created by William Scholder on 19.06.21.
//

import SwiftUI

@main
struct WarrantyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
