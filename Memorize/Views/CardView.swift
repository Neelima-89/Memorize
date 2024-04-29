//
//  CardView.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

struct CardView: View {
    var card: EmojiGame<String>.Card
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack {
            Group {
                base.fill(.white)
                base.stroke(lineWidth: 2)
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.4)
                    .aspectRatio(contentMode: .fit)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            base.fill()
                .opacity(card.isFaceUp ? 0 : 1)
        }
        .animation(.default, value: card.isMatched)
        .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: EmojiGame<String>.Card(id: "1", content: "🇸🇬"))
    }
}
