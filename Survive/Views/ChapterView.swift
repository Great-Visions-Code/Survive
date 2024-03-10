//
//  ChapterView.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This view displays the content of the current chapter in the "Survive" story,
//  including text, images, and options for the player to choose from. Ends with
//  link to EndView().
//

import SwiftUI

/// Displays the content of the current chapter in the "Survive" story, including narrative text,
/// chapter images, and interactive options for the player.
struct ChapterView: View {
    @ObservedObject var viewModel: StoryProgressionViewModel // Manages story progression.
    @State private var scrollViewTopID = 0 // Identifier to reset the scroll view.
    @AppStorage("fontSize") private var fontSize: Double = 20 // User's preferred font size.

    var body: some View {
        ZStack {
            // Background color setup for the chapter view.
            AppColors.mainBackgroundColor.ignoresSafeArea()
            VStack {
                if let chapter = viewModel.currentChapter {
                    // Chapter title display.
                    Text(chapter.chapterTitle)
                        .font(.title)
                        .foregroundColor(AppColors.mainFontColor)
                        .padding()
                    
                    ScrollViewReader { scrollViewProxy in
                        ScrollView {
                            VStack {
                                Spacer().id(scrollViewTopID) // Enables scroll view reset.
                                
                                // Primary chapter image.
                                Image(chapter.imageName[0])
                                    .resizable()
                                    .scaledToFit()
                                
                                // Chapter narrative text.
                                Text(chapter.text)
                                    .font(.system(size: fontSize))
                                    .foregroundColor(AppColors.mainFontColor)
                                    .padding()
                                
                                // Secondary chapter image, if present.
                                if chapter.imageName.count > 1 {
                                    Image(chapter.imageName[1])
                                        .resizable()
                                        .scaledToFit()
                                        .padding()
                                }
                                
                                // Interactive options for story progression.
                                ForEach(chapter.options.indices, id: \.self) { index in
                                    let option = chapter.options[index]
                                    Button(action: {
                                        viewModel.goToNextChapter(chapterID: option.nextChapterID)
                                        withAnimation {
                                            scrollViewProxy.scrollTo(scrollViewTopID, anchor: .top)
                                        }
                                    }) {
                                        Text(option.text)
                                            .padding()
                                            .font(.system(size: fontSize))
                                            .foregroundColor(AppColors.clickableLinkColor)
                                            .background(AppColors.pickChoiceBackgroundColor)
                                            .cornerRadius(40)
                                    }
                                    .padding(.bottom, 5)
                                }
                                
                                // Conditional navigation link for end chapter.
                                if let chapterID = viewModel.currentChapter?.id, chapterID >= 17 {
                                    NavigationButton(destination: EndView(),
                                                     buttonText: "Continue",
                                                     fontSize: fontSize,
                                                     backgroundColor: AppColors.pickChoiceBackgroundColor)
                                    
                                }
                            }
                        }
                        .padding(.bottom, 20) // Scroll view bottom padding.
                    }
                } else {
                    // Fallback text when chapter data is unavailable.
                    Text("Chapter not found")
                }
            }
        }
    }
}

#Preview {
    ChapterView(viewModel: StoryProgressionViewModel())
}
