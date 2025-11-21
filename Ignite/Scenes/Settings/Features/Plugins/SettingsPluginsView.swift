//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsPluginsView: View {

    // MARK: - Properties

    @Default(.Settings.Plugins.pluginLoadMethod)
    private var pluginLoadMethod

    // MARK: - View

    var body: some View {
        Form {
            Picker("Load Plugins on", selection: $pluginLoadMethod) {
                ForEach(PluginLoadMethod.allCases) { method in
                    Text(method.title).tag(method)
                }
            }
        }
        .navigationTitle(.plugins)
    }

}

// MARK: - Preview

#Preview {
    SettingsPluginsView()
}
