//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsGeneralView: View {

    var body: some View {
        TabView {
            ForEach(SettingsGeneralTabs.allCases) { tab in
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

#Preview {
    SettingsGeneralView()
}
