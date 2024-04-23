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
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(themeType.emojis.indices, id: \.self) { index in
                        CardView(content: themeType.emojis[index])
                    }
                }
                .font(.largeTitle)
                .aspectRatio(2/3, contentMode: .fill)
            }
            HStack(alignment: .bottom, spacing: 60) {
                ForEach(0..<ThemeType.allCases.count) { index in
                    Theme(action: {
                        setTheme(of: index)
                    }, icon: ThemeType.allCases[index].icon, text: ThemeType.allCases[index].title)
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

