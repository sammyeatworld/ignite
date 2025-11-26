//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsLocationsView: View {

    // MARK: - Properties

    @Default(.Settings.Locations.dumps)
    private var dumps
    @Default(.Settings.Locations.plugins)
    private var plugins
    @Default(.Settings.Locations.logs)
    private var logs

    // MARK: - View

    var body: some View {
        Form {
            Section {
                SettingsInfoRow("Dumps", infoTitle: dumps.type.title) {
                    SettingsPathView(dumps.url)
                } sheet: {
                    SettingsLocationPicker("Dumps", location: $dumps)
                }
            }

            Section {
                SettingsInfoRow("Plugins", infoTitle: plugins.type.title) {
                    SettingsPathView(plugins.url)
                } sheet: {
                    SettingsLocationPicker("Plugins", location: $plugins)
                }
            }

            Section {
                SettingsInfoRow("Logs", infoTitle: logs.type.title) {
                    SettingsPathView(logs.url)
                } sheet: {
                    SettingsLocationPicker("Logs", location: $logs)
                }
            }
        }
        .navigationTitle(.locations)
    }

}

// MARK: - Preview

#Preview {
    SettingsLocationsView()
}
