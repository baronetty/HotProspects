//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Leo  on 06.02.24.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
