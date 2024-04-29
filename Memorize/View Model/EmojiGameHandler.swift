//
//  EmojiGameHandler.swift
//  Memorize
//
//  Created by Neelima on 27/04/24.
//

import Foundation

class EmojiGameHandler: ObservableObject {
    init() {
        game.shuffle()
    }
    @Published private var game = EmojiGame(noOfPairs: 8) { index -> String  in
        return ["🇦🇽","🇿🇦","🇮🇳","🇬🇭","🇧🇮","🇨🇦","🇰🇭","🚩","🇧🇭","🇦🇫"][index]
    }
    var cards: [EmojiGame<String>.Card] {
        game.cards
    }
    func chooseCard(_ card: EmojiGame<String>.Card) {
        game.chooseCard(card)
    }
}
