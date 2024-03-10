//
//  StartGameView.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This view acts as a gateway for players to begin their adventure in the "Survive" app.
//  It features a simple interface that invites the user to start the story, leading them into the game in ChapterView().
//

import SwiftUI

/// Represents the initial screen where players can start their adventure in the "Survive" app.
struct StartGameView: View {
    /// Manages the story progression, tracking the player's journey from the beginning.
    @StateObject private var viewModel = StoryProgressionViewModel()
    
    /// User's preferred font size, stored for UI consistency.
    @AppStorage("fontSize") private var fontSize: Double = 20

    var body: some View {
        ZStack {
            // Background setup for the start game screen.
            Image("StartGameViewImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)

            VStack {
                // Button to initiate the game's story, leading the player into the narrative.
                NavigationButton(destination: ChapterView(viewModel: viewModel),
                                 buttonText: "> Start Story <",
                                 fontSize: fontSize)
            }
        }
    }
}

#Preview {
    StartGameView()
}
