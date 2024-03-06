//
//  ChapterModel.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This file defines the data model for a chapter in the "Survive" app.
//  It includes the structure for both the Chapter itself and the Options
//  that players can choose within each chapter.
//

import Foundation

/// Represents a single chapter in the "Survive" game, encapsulating its content and narrative choices.
struct Chapter {
    /// A unique identifier for the chapter, facilitating navigation and tracking within the game.
    let id: Int
    /// The title of the chapter.
    let chapterTitle: String
    /// The narrative text of the chapter, which unfolds the story and sets the scene for choices.
    let text: String
    /// An array of `Option` objects representing the choices available to the player in this chapter.
    let options: [Option]
    /// An array of strings representing the names of images associated with the chapter, enhancing the narrative with visual elements.
    let imageName: [String]
    
    /// Represents a choice available to the player within a chapter, linking narrative decisions to subsequent chapters.
    struct Option {
        /// The text displayed for this option, describing the choice to the player.
        let text: String
        /// The identifier of the chapter this option leads to, guiding the narrative path based on player decisions.
        let nextChapterID: Int
    }
}
