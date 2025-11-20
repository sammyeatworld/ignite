//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct SettingsUpdatesView: View {

    // MARK: - Properties

    @Default(.Settings.Updates.automaticallyCheckForUpdates)
    private var automaticallyCheckForUpdates: Bool
    @Default(.Settings.Updates.automaticallyDownloadUpdates)
    private var automaticallyDownloadUpdates: Bool
    @Default(.Settings.Updates.updateBranch)
    private var updateBranch: UpdateBranch
    @Default(.Settings.Updates.updateInterval)
    private var updateInterval: UpdateInterval

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
