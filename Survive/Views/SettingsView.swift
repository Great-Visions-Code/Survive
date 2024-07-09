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
                    .font(.system(size: fontSize + 10))
                    .bold()
                    .padding()
                    .background(AppColors.mainBackgroundColor.opacity(0.85)) // Enhances text readability.
                    .cornerRadius(15)
                
                Spacer() // Pushes content to the top.
                
                VStack(spacing: 20) {
                    // Displays the current font size.
                    Text("-Example text size-")
                        .font(.system(size: fontSize))
                        .foregroundColor(AppColors.mainFontColor)
                        .background(AppColors.mainBackgroundColor)
                        .cornerRadius(15)
                    
                    // Slider for adjusting the font size.
                    VStack {
                        Slider(value: $fontSize, in: 15...35, step: 2) {
                        } minimumValueLabel: {
                            Text("Aa")
                                .font(.system(size: 15))
                                .foregroundColor(AppColors.mainFontColor)
                        } maximumValueLabel: {
                            Text("Aa")
                                .font(.system(size: 35))
                                .foregroundColor(AppColors.mainFontColor)
                        }
                        .accentColor(AppColors.clickableLinkColor)
                        .padding()
                        .background(AppColors.pickChoiceBackgroundColor.opacity(0.85))
                        .cornerRadius(15)
                    }
                }
                .padding()
                .background(AppColors.mainBackgroundColor.opacity(0.85))
                .cornerRadius(50)
                
                Spacer() // Ensures the font size settings are aligned at middle.
            }
        }
    }
}

#Preview {
    SettingsView()
}
