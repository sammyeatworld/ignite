//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsGeneralView: View {

    // MARK: - View

    var body: some View {
        TabView {
            ForEach(SettingsGeneralTab.allCases) { tab in
                Tab {
                    tab.view
                } label: {
                    Text(tab.title)
                }
            }
        }
        .navigationTitle(.general)
        .tabViewStyle(.grouped)
        .padding()
    }

}

// MARK: - Preview

#Preview {
    SettingsGeneralView()
}
