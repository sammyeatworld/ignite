//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct IgniteCommands: Commands {

    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        CommandGroup(replacing: .appInfo) {
            Button {
                openWindow(id: "about")
            } label: {
                Label(.aboutIgnite, systemImage: SF.about.rawValue)
            }
            
        }
        CommandGroup(replacing: .appSettings) {
            Button {
                openWindow(id: "settings")
            } label: {
                Label(.settings, systemImage: SF.settings.rawValue)
            }
            .keyboardShortcut(",", modifiers: .command)
        }
    }

}
