//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsView: View {

    // MARK: - Properties

    // MARK: - View

    var body: some View {
        TabView {
            ForEach(SettingsTab.allCases) { tab in
                Tab(tab.title, systemImage: tab.image) {
                    tab.view
                }
            }
        }
        .tabViewStyle(.sidebarAdaptable)
        .formStyle(.grouped)
    }
    
}

// MARK: - Preview

#Preview {
    SettingsView()
}
