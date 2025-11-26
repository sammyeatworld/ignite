//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

@main
struct IgniteApp: App {

    @NSApplicationDelegateAdaptor(IgniteAppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            IgniteView()
                .windowResizeBehavior(.disabled)
        }
        .commands {
            IgniteCommands()
            JumpCommands()
            SearchCommands()
            DebugCommands()
        }
        .windowResizability(.contentSize)

        Window("Processes", id: "processes") {
            ProcessesView()
                .windowMinimizeBehavior(.disabled)
                .windowResizeBehavior(.disabled)
        }
        .windowResizability(.contentSize)

        Window("About Ignite", id: "about") {
            AboutView()
                .windowMinimizeBehavior(.disabled)
                .windowResizeBehavior(.disabled)
        }
        .windowResizability(.contentSize)
        .restorationBehavior(.disabled)

        Window("Settings", id: "settings") {
           SettingsView()
        }
        .restorationBehavior(.disabled)
    }

}
