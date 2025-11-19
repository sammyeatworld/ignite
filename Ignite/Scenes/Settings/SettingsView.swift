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
        .formStyle(.grouped)
        .navigationSplitViewStyle(.prominentDetail)
        .tabViewStyle(.sidebarAdaptable)
    }
    
}

// MARK: - Preview

#Preview {
    SettingsView()
}
