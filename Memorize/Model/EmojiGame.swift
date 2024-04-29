//
//  EmojiGame.swift
//  Memorize
//
//  Created by Neelima on 27/04/24.
//

import Foundation

struct EmojiGame<Content> where Content: Equatable {
    init(noOfPairs: Int, contentFactory: (Int) -> Content) {
        for index in 0..<noOfPairs {
            cards.append(Card(id: "\(index)a", content: contentFactory(index)))
            cards.append(Card(id: "\(index)b", content: contentFactory(index)))
        }
        shuffle()
    }
    struct Card: Equatable, Identifiable, CustomStringConvertible {
        let id: String
        let content: Content
        var isFaceUp = false
        var isMatched = false
        var description: String {
            "Card with content \(content) is face\(isFaceUp ? "up" : "down")"
        }
    }
    private(set) var cards: [Card] = []
    private var onlyCardWithFaceUp: Int? {
        get {
            return cards.indices.filter { cards[$0].isFaceUp }.only
        } set {
            cards.indices.forEach { cards[$0].isFaceUp = ($0 == newValue ) }
        }
    }
    private func getIndex(of card: Card) -> Int? {
        cards.firstIndex { $0.id == card.id }
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    mutating func chooseCard(_ card: Card) {
        if let index = cards.firstIndex(of: card) {
            if !cards[index].isFaceUp && !cards[index].isMatched {
                if let faceUpCardIndex = onlyCardWithFaceUp  {
                    if cards[index].content == cards[faceUpCardIndex].content {
                        cards[index].isMatched = true
                        cards[faceUpCardIndex].isMatched = true
                    }
                } else {
                    onlyCardWithFaceUp = index
                }
                cards[index].isFaceUp = true
            }
        }
    }
}

extension Array {
    var only: Element? {
        return self.count == 1 ? self.first : nil
    }
}
