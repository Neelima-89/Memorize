//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Neelima on 23/04/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var emojiGameHandler = EmojiGameHandler(Theme.food)
    var body: some Scene {
        WindowGroup {
            ContentView(handler: emojiGameHandler)
        }
    }
}
