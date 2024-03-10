//
//  SettingsView.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/28/24.
//
//  This view displays the option to change font size.
//

import SwiftUI

/// A view for adjusting user preferences, such as font size, within the "Survive" app.
struct SettingsView: View {
    @AppStorage("fontSize") private var fontSize: Double = 20 // Stores the user's font size preference persistently.

    var body: some View {
        ZStack {
            // Sets a background image for the settings view.
            Image("SettingsViewImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)

            VStack {
                // Title for the settings page.
                Text("Settings")
                    .foregroundColor(AppColors.mainFontColor)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .background(Color.black.opacity(0.85)) // Enhances text readability.
                    .cornerRadius(15)
                
                Spacer() // Pushes content to the top.
                
                VStack(spacing: 20) {
                    // Displays the current font size.
                    Text("Font Size: \(Int(fontSize))")
                        .font(.system(size: fontSize))
                        .foregroundColor(AppColors.mainFontColor)
                        .bold()
                        .background(AppColors.mainBackgroundColor)
                        .cornerRadius(15)
                    
                    // Slider for adjusting the font size.
                    VStack {
                        Slider(value: $fontSize, in: 14...32, step: 1) {
                            Text("Font Size")
                        } minimumValueLabel: {
                            Text("14")
                                .font(.body)
                                .foregroundColor(AppColors.mainFontColor)
                                .bold()
                        } maximumValueLabel: {
                            Text("32")
                                .font(.body)
                                .foregroundColor(AppColors.mainFontColor)
                                .bold()
                        }
                        .accentColor(AppColors.clickableLinkColor)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.85))
                .cornerRadius(50)
                
                Spacer() // Ensures the settings are aligned at the top.
            }
        }
    }
}

#Preview {
    SettingsView()
}
