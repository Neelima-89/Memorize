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
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .opacity(card.isFaceUp ? 0 : 1)
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 5)
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.4)
                    .aspectRatio(contentMode: .fit)
                    
            }
            .opacity(card.isFaceUp ? 1 : 0)
        }
        .foregroundColor(.orange)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: EmojiGame<String>.Card(id: "1", content: "🇸🇬"))
    }
}
