//
//  EmojiGameHandler.swift
//  Memorize
//
//  Created by Neelima on 27/04/24.
//

import Foundation

class EmojiGameHandler: ObservableObject {
    init(_ theme: Theme) {
        self.theme = theme
        self.game = EmojiGame(noOfPairs: theme.noOfCardPairs) { index -> String  in
            return theme.emojis[index]
        }
    }
    @Published private var game: EmojiGame<String>
    var theme: Theme {
        didSet {
            game = EmojiGame(noOfPairs: 5) { index -> String  in
                return theme.emojis[index]
            }
        }
    }
    var cards: [EmojiGame<String>.Card] {
        game.cards
    }
    func chooseCard(_ card: EmojiGame<String>.Card) {
        game.chooseCard(card)
    }
}
