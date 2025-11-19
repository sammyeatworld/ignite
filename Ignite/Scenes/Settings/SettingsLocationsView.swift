//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults
import UniformTypeIdentifiers

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
                LocationSettingRow($dumps)
            }
           
            Section {
               LocationSettingRow($plugins)
            }
            
            Section {
               LocationSettingRow($logs)
            }
        }
        .navigationTitle(.locations)
    }

}

// MARK: - Preview

#Preview {
    SettingsLocationsView()
}
