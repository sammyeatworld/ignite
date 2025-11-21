//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import FactoryKit

struct DebugCommands: Commands {

    // MARK: - Properties

    @Environment(\.openWindow)
    private var openWindow
    private let executor: DebugCommandExecutor

    init(executor: DebugCommandExecutor = DebugCommandExecutor()) {
        self.executor = executor
    }

    // MARK: - Commands

    var body: some Commands {
        CommandMenu(.debug) {
            commandView(for: .execution)
            Divider()

            commandView(for: .stepping)
            Divider()

            commandView(for: .breakpoints)
            Divider()

            commandView(for: .attach)
        }
    }

    @ViewBuilder
    private func commandView(for group: DebugCommandGroup) -> some View {
        ForEach(DebugCommand.allCases.filter { $0.group == group }) { command in
            if command.isMenu {
                Menu(command.title) {
                }
            } else {
                Button {
                    Task { await executor.perform(command) }
                } label: {
                    if let image = command.image {
                        Label(command.title, systemImage: image)
                    } else {
                        Text(command.title)
                    }
                }
                .keyboardShortcut(command.shortcut)
            }
        }
    }

}
