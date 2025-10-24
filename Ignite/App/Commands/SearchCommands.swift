//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SearchCommands: Commands {

    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        CommandMenu("Search") {
            Button("Next Code") {
            }
            Button("Next Data") {
            }
            Divider()
            Button("Immediate Value...") {
            }
            Button("Next Immediate Value") {
            }
            Button("Text...") {
            }
            Button("Next Text") {
            }
            Button("Sequence of Bytes...") {
            }
            Button("Next Sequence of Bytes") {
            }
            Divider()
            Button("Search Direction") {
            }
        }
    }

}
