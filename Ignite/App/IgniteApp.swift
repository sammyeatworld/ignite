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
            ContentView()
        }
        .commands {
            IgniteCommands()
        }
        
        Window("About Ignite", id: "about") {
            AboutView(viewModel: AboutViewModel())
                .windowMinimizeBehavior(.disabled)
                .windowResizeBehavior(.disabled)
        }
        .windowResizability(.contentSize)
        .restorationBehavior(.disabled)
    }
    
}
