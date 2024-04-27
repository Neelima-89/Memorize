//
//  CardView.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

struct CardView: View {
    @State var isFaceUp = true
    var content: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .opacity(isFaceUp ? 0 : 1)
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 5)
                Text(content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.4)
                    .aspectRatio(contentMode: .fit)
                    
            }
            .opacity(isFaceUp ? 1 : 0)
        }
        .foregroundColor(.orange)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "⚽️")
    }
}
