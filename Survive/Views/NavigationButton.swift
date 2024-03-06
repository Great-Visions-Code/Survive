//
//  NavigationButton.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/29/24.
//
//  This component creates a customizable navigation button used throughout the "Survive" app.
//  It allows for easy navigation between views with a consistent button design that includes customizable text, font size, colors, and more.
//

import SwiftUI

/// A reusable navigation button for moving between views within the app.
/// It supports customization of text, font size, colors, and corner radius for visual consistency across the app.
struct NavigationButton<Destination: View>: View {
    // Destination view to navigate to.
    let destination: Destination
    // Text displayed on the button.
    let buttonText: String
    // Font size of the button text.
    let fontSize: Double
    // Color of the button text.
    let fontColor: Color
    // Background color of the button.
    let backgroundColor: Color
    // Corner radius of the button's background.
    let cornerRadius: CGFloat
    
    /// Initializes a new NavigationButton with specified design parameters.
    /// - Parameters:
    ///   - destination: The view to navigate to when the button is tapped.
    ///   - buttonText: The text to display on the button.
    ///   - fontSize: The font size of the button text.
    ///   - fontColor: The color of the button text.
    ///   - backgroundColor: The background color of the button.
    ///   - cornerRadius: The corner radius of the button's background.
    init(destination: Destination,
         buttonText: String,
         fontSize: Double = 20,
         fontColor: Color = AppColors.clickableLinkColor,
         backgroundColor: Color = Color.black.opacity(0.85),
         cornerRadius: CGFloat = 15) {
        self.destination = destination
        self.buttonText = buttonText
        self.fontSize = fontSize
        self.fontColor = fontColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
    
    /// The body of the NavigationButton, defining its layout and view hierarchy.
    var body: some View {
        NavigationLink(destination: destination) {
            Text(buttonText)
                .font(.system(size: fontSize))
                .foregroundColor(fontColor)
                .bold()
                .padding()
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
    }
}

/// Example usage of the NavigationButton within a SwiftUI View.
/// Demonstrates how to integrate the button into a navigation view, configuring it for navigation to a chapter view.
struct ExampleUsageView: View {
    var body: some View {
        NavigationView {
            NavigationButton(destination: ChapterView(viewModel: StoryProgressionViewModel()),
                             buttonText: "> Start Story <",
                             fontSize: 20,
                             fontColor: AppColors.clickableLinkColor,
                             backgroundColor: Color.black.opacity(0.85),
                             cornerRadius: 15)
        }
    }
}

#Preview {
    NavigationButton(destination: WelcomeView(), buttonText: "Start")
}
