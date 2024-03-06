//
//  WelcomeView.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This view serves as the landing page of the "Survive" app. It presents the user with a welcoming
//  message and options to StartGameView() or access SettingsView().
//

import SwiftUI

/// The landing view of the "Survive" app, offering a welcome message and settings options.
struct WelcomeView: View {
    /// User's preferred font size, stored persistently.
    @AppStorage("fontSize") private var fontSize: Double = 20

    var body: some View {
        NavigationView {
            ZStack {
                // Background configuration.
                Image("WelcomeViewImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)

                // Main content including the welcome message and navigation links.
                VStack {
                    Spacer() // Ensures vertical centering of content.
                    
                    // App name display with styling.
                    Text("Survive!")
                        .font(.custom("Times New Roman", size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.mainFontColor)
                        .padding()
                        .background(Color.black.opacity(0.85))
                        .cornerRadius(15)
                    
                    Spacer().frame(height: 20) // Separates title from start game link.
                    
                    // Link to start the game, styled for visibility.
                    NavigationButton(destination: StartGameView(),
                                     buttonText: ">>Click Here to Start<<")
                    Spacer() // Completes vertical centering.
                }
                
                // Settings icon in the top-right corner for access to app settings.
                VStack {
                    HStack {
                        Spacer() // Moves the icon to the far right.
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .padding([.trailing]) // Adjusts padding to keep within screen bounds.
                        }
                        .padding() // Improves touch area.
                    }
                    Spacer() // Aligns icon at the top.
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
