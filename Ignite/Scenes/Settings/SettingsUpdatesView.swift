//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsUpdatesView: View {

    // MARK: - Properties

    @Default(.Updates.automaticallyCheckForUpdates)
    var automaticallyCheckForUpdates: Bool
    @Default(.Updates.automaticallyDownloadUpdates)
    var automaticallyDownloadUpdates: Bool
    @Default(.Updates.updateBranch)
    var updateBranch: UpdateBranch
    @Default(.Updates.updateInterval)
    var updateInterval: UpdateInterval

    // MARK: - View

    var body: some View {
        Form {
            Toggle(.automaticallyCheckForUpdates, isOn: $automaticallyCheckForUpdates)
            Toggle(.automaticallyDownloadUpdates, isOn: $automaticallyDownloadUpdates)
            Picker(.updateBranch, selection: $updateBranch) {
                ForEach(UpdateBranch.allCases) { branch in
                    Text(branch.title)
                        .tag(branch)
                }
            }
            Picker(.updateInterval, selection: $updateInterval) {
                ForEach(UpdateInterval.allCases) { interval in
                    Text(interval.title)
                        .tag(interval)
                }
            }
        }
        .navigationTitle(.updates)
    }

}

// MARK: - Preview

#Preview {
    SettingsUpdatesView()
}
