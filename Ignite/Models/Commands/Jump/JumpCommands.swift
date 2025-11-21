//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import FactoryKit

struct JumpCommands: Commands {

    // MARK: - Properties

    @Environment(\.openWindow)
    private var openWindow
    private let executor: JumpCommandExecutor

    init(executor: JumpCommandExecutor = JumpCommandExecutor()) {
        self.executor = executor
    }

    // MARK: - Commands

    var body: some Commands {
        CommandMenu(.jump) {
            commandView(for: .navigation)
            Divider()

            commandView(for: .targets)
            Divider()

            commandView(for: .crossReferences)
        }
    }

    @ViewBuilder
    private func commandView(for group: JumpCommandGroup) -> some View {
        ForEach(JumpCommand.allCases.filter { $0.group == group }) { command in
            
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
