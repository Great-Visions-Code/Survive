//
//  AppColors.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This struct serves as a centralized repository for all color definitions used within the
//  "Survive" app.
//

import SwiftUI

/// Centralized color definitions for the "Survive" app to ensure consistency and simplify global updates.
struct AppColors {
    /// Primary app background color.
    static let mainBackgroundColor = Color.black
    
    /// Default text color for contrast with the main background.
    static let mainFontColor = Color.white
    
    /// Highlight color for interactive links or elements.
    static let clickableLinkColor = Color.yellow
    
    /// Background color for selectable choices, slightly lighter than the main background.
    static let pickChoiceBackgroundColor = Color(red: 0.15, green: 0.15, blue: 0.15)
}

/// Preview view for visualizing `AppColors` within the app design context.
struct AppColorsPreview: View {
    var body: some View {
        VStack {
            ColorPreview(color: AppColors.mainBackgroundColor, name: "Main Background")
            ColorPreview(color: AppColors.mainFontColor, name: "Main Font")
            ColorPreview(color: AppColors.clickableLinkColor, name: "Clickable Link")
            ColorPreview(color: AppColors.pickChoiceBackgroundColor, name: "Pick Choice Background")
        }
        .padding()
        .background(Color.gray) // Neutral background for contrast.
    }
}

/// Reusable view for displaying a color sample and its description.
struct ColorPreview: View {
    let color: Color
    let name: String
    
    var body: some View {
        HStack {
            color
                .frame(width: 60, height: 60) // Visual representation of the color.
                .cornerRadius(10)
            
            Text(name)
                .foregroundColor(.white)
                .padding(.leading, 10)
        }
        .padding(10)
    }
}

#Preview {
    AppColorsPreview()
}
