//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct JumpCommands: Commands {

    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        CommandMenu("Jump") {
            Button("Jump to Previous Position", systemImage: "arrowshape.left.fill") {
            }
            Button("Jump to Next Position", systemImage: "arrowshape.right.fill") {
            }
            Button("Empty Navigation Stack", systemImage: "trash.fill") {
            }
            Divider()
            Button("Jump to Address...") {
            }
            Button("Jump by Name...") {
            }
            Button("Jump to Function...") {
            }
            Button("Jump to Segment...") {
            }
            Button("Jump to Segment Register...") {
            }
            Button("Jump to Problem...") {
            }
            Button("Jump to Entry Point...") {
            }
            Button("Jump to File Offset...") {
            }
            Divider()
            Button("List Cross References to...", systemImage: "arrow.down.to.line") {
            }
            Button("List Cross References from...", systemImage: "arrow.up.to.line") {
            }
        }
    }

}
