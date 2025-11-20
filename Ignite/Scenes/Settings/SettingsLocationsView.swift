//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsLocationsView: View {

    // MARK: - Properties
    
    @Default(.Locations.dumps)
    private var dumps
    @Default(.Locations.plugins)
    private var plugins
    @Default(.Locations.logs)
    private var logs

    // MARK: - View

    var body: some View {
        Form {
            Section {
                SettingsInfoRow(dumps.title, infoTitle: dumps.type.title) {
                    SettingsPathView(dumps.url)
                } sheet: {
                    SettingsLocationPicker($dumps)
                }
            }
           
            Section {
                SettingsInfoRow(plugins.title, infoTitle: plugins.type.title) {
                    SettingsPathView(plugins.url)
                } sheet: {
                    SettingsLocationPicker($plugins)
                }
            }
            
            Section {
                SettingsInfoRow(logs.title, infoTitle: logs.type.title) {
                    SettingsPathView(logs.url)
                } sheet: {
                    SettingsLocationPicker($logs)
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
