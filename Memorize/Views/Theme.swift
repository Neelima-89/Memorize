//
//  Theme.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

struct Theme: View {
    var action: () -> Void
    var icon: String
    var text: String
    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .font(.title)
                    .imageScale(.large)
                Text(text)
                    .font(.system(size: 10))
            }
        }
    }
}

struct Theme_Previews: PreviewProvider {
    static var previews: some View {
        Theme(action: {}, icon: "car", text: "Vehicles")
    }
}

enum ThemeType: Int, CaseIterable {
    case vehicles
    case food
    case games
    
    var emojis: [String] {
        switch self {
        case .food: return ["🍎","🥐","🍞","🧅","🍨","🍫","🥐","🍨","🍫","🧅","🍞","🍎"].shuffled()
        case .games: return ["⚽️","🏀","⚾️","🏈","🎾","🏐","🎾","🎱","🏐","⚾️","🏈","⚽️","🎱","🏀"].shuffled()
        case .vehicles:
            return ["🚗","🚲","🚄","🚊","🚁","🛳","🚊","🚄","🚊","🚲","🚗","🚁"].shuffled()
        }
    }
    var icon: String {
        switch self {
        case .vehicles: return "car"
        case .food: return "fork.knife.circle"
        case .games: return "gamecontroller"
        }
    }
    var title: String {
        switch self {
        case .vehicles: return "Vehicles"
        case .food: return "Food"
        case .games: return "Games"
        }
    }
}
