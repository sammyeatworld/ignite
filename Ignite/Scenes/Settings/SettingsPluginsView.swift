//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsPluginsView: View {

    // MARK: - Properties
    
    @Default(.Plugins.automaticallyLoadOnStartup)
    private var automaticallyLoadOnStartup
    @Default(.Plugins.loadPluginsOnDemand)
    private var loadPluginsOnDemand

    // MARK: - View
    
    var body: some View {
        Form {
            Section {
                Toggle(.automaticallyLoadOnStartup, isOn: $automaticallyLoadOnStartup)
                Toggle(.loadPluginsOnDemand, isOn: $loadPluginsOnDemand)
            }
        }
        .navigationTitle(.plugins)
    }

}

// MARK: - Preview

#Preview {
    SettingsPluginsView()
}
