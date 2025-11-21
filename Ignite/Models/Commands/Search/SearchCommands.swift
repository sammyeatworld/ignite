//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import FactoryKit

struct SearchCommands: Commands {

    // MARK: - Properties

    @Environment(\.openWindow)
    private var openWindow
    private let executor: SearchCommandExecutor

    init(executor: SearchCommandExecutor = SearchCommandExecutor()) {
        self.executor = executor
    }

    // MARK: - Commands

    var body: some Commands {
        CommandMenu(.search) {
            commandView(for: .searchType)
            Divider()

            commandView(for: .contentSearch)
            Divider()

            commandView(for: .options)
        }
    }

    @ViewBuilder
    private func commandView(for group: SearchCommandGroup) -> some View {
        ForEach(SearchCommand.allCases.filter { $0.group == group }) { command in
 
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
