//
//  ContentView.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var themeType = ThemeType.vehicles
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 0)], spacing: 0) {
                    ForEach(themeType.emojis.indices, id: \.self) { index in
                        CardView(content: themeType.emojis[index])
                            .padding(5)
                            .aspectRatio(2/3, contentMode: .fill)
                    }
                }
            }
        }
        .padding()
    }
    
    func setTheme(of index: Int) -> Void {
        themeType = ThemeType(rawValue: index) ?? .vehicles
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

