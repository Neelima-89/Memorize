//
//  Theme.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

enum Theme: Int, CaseIterable {
    case vehicles
    case food
    case games
    case flags
    case animals
    case symbols
    
    var emojis: [String] {
        switch self {
        case .food: return ["🍎","🥐","🍞","🧅","🍨","🍫","🥗","🌮","🍟","🍕","🥨"]
        case .games: return ["⚽️","🏀","⚾️","🏈","🎾","🏐","🪀","🎱","🥏","🛝","🛷","🛼","⛸"]
        case .vehicles: return ["🚗","🚲","🚄","🚊","🚁","🛳","🚀","🛩","🚆","🚝","🚄","🚈"]
        case .flags: return ["🇦🇽","🇿🇦","🇮🇳","🇬🇭","🇧🇮","🇨🇦","🇰🇭","🚩","🇧🇭","🇦🇫"]
        case .animals: return ["🐶","🐱","🐭","🐯","🦁","🐮","🐷","🐸","🐻‍❄️","🐵"]
        case .symbols: return ["☯️","❤️","💘","❤️‍🩹","❤️‍🔥","💔","🆘","♠️","💤","🆒"]
            
        }
    }
    var noOfCardPairs: Int {
        return 8
    }
    var color: Color {
        switch self {
        case .vehicles: return .cyan
        case .food: return .green
        case .games: return .purple
        case .flags: return .red
        case .animals: return .orange
        case .symbols: return .yellow
        }
    }
}
