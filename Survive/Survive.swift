//
//  Survive.swift
//  Survive
//  This is the main entry point for the SwiftUI application "Survive". It sets up the application's initial view.
//
//  Created by Gustavo Vazquez on 2/17/24.
//

import SwiftUI

// The `Survive` struct conforms to the `App` protocol, marking it as the entry point for the SwiftUI application.
@main
struct Survive: App {
    // The body property defines the app's scene content and behavior.
    var body: some Scene {
        // `WindowGroup` creates a new window for the app's content. This is the starting point of the UI.
        WindowGroup {
            // `WelcomeView()` is the first view that will be displayed when the app launches.
            // It serves as the landing page or introduction screen for the game.
            WelcomeView()
        }
    }
}
