//
//  ContentView.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var handler: EmojiGameHandler
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 0)], spacing: 0) {
                    ForEach(handler.cards) { card in
                        CardView(card: card)
                            .padding(5)
                            .aspectRatio(2/3, contentMode: .fill)
                            .onTapGesture {
                                handler.chooseCard(card)
                            }
                            .opacity(card.isMatched ? 0 : 1)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(handler: EmojiGameHandler())
    }
}

