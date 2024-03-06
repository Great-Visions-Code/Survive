//
//  StoryProgressionViewModel.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This ViewModel manages the progression of the story in the "Survive" app.
//  It tracks the current chapter and handles navigation between chapters
//  based on the player's choices. It also supports restarting the story.
//

import Foundation

/// Manages the story progression within the "Survive" app.
/// It keeps track of the current chapter and handles transitions between chapters based on player choices.

class StoryProgressionViewModel: ObservableObject {
    @Published var currentChapter: Chapter? // The chapter currently being displayed.

    /// Initializes the ViewModel by setting the story's starting point.
    init() {
        currentChapter = chapterByID(1) // Start the story at the first chapter.
    }
    
    /// Navigates to the next chapter based on the player's choice.
    /// - Parameter chapterID: The ID of the chapter to navigate to.
    func goToNextChapter(chapterID: Int) {
        currentChapter = chapterByID(chapterID)
    }
    
    /// Retrieves a chapter by its ID, returning `nil` if no such chapter exists.
    /// This method leverages the `storyChapters` array defined in `StoryDataModel.swift`.
    /// - Parameter id: The ID of the desired chapter.
    /// - Returns: An optional `Chapter` instance.
    private func chapterByID(_ id: Int) -> Chapter? {
        return storyChapters.first { $0.id == id }
    }
}
