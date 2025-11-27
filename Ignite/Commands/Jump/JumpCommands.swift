//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct JumpCommands: Commands {

    // MARK: - Properties

    private let executor: JumpCommandExecutor

    // MARK: - Initializer

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

    // MARK: - Methods

    @ViewBuilder
    private func commandView(for category: JumpCommandCategory) -> some View {
        ForEach(JumpCommand.allCases.filter { $0.category == category }) { command in
            Button {
                Task { await executor.execute(command) }
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
