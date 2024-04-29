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
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
                        ForEach(handler.cards) { card in
                            CardView(card: card)
                                .padding(5)
                                .aspectRatio(2/3, contentMode: .fill)
                                .onTapGesture {
                                    handler.chooseCard(card)
                                }
                                .foregroundColor(handler.theme.color)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        handler.theme = Theme(rawValue: Int.random(in: Theme.allCases.indices)) ?? .food
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(handler: EmojiGameHandler(Theme.food))
    }
}

