//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct DebugCommands: Commands {
    
    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        CommandMenu("Debug") {
            Button("Pause", systemImage: "pause.fill") {
            }
            Button("Run to Cursor", systemImage: "arrow.down.to.line") {
            }
            Button("Run until Return", systemImage: "") {
            }
            Button("Step Over", systemImage: "") {
            }
            Button("Step Into", systemImage: "") {
            }
            Button("Step Out", systemImage: "") {
            }
            Button("Step Over Instruction", systemImage: "") {
            }
            Button("Step Over Thread", systemImage: "") {
            }
            Button("Step Into Instruction", systemImage: "") {
            }
            Button("Step Into Thread", systemImage: "") {
            }
            Divider()
            Button("Deactivate Breakpoints", systemImage: "") {
            }
            Menu("Breakpoints") {
            }
            Divider()
            Button("Attach to Process by PID or Name...", systemImage: "") {
            }
            Menu("Attach to Process", systemImage: "") {
                
            }
            Button("Detach from", systemImage: "") {
            }
            Button("Debug Executable...", systemImage: "") {
            }
            Divider()
            Button("Debugger Options...", systemImage: "") {
            }
        }
    }

}
