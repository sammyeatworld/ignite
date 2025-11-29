//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct RootView: View {

    // MARK: - Properties

    @State
    private var isShowingProcesses = false
    @Default(.Settings.Updates.automaticallyCheckForUpdates)
    private var automaticallyCheckForUpdates: Bool

    // MARK: - Initializer

    init() { }

    // MARK: - View

    var body: some View {
        VStack(spacing: 24.0) {
            Image(.Hexley.clear)
            VStack(alignment: .center, spacing: 8.0) {
                PrimaryButton(.openProcess) {
                    isShowingProcesses.toggle()
                }
                .buttonStyle(.borderedProminent)

                PrimaryButton(.openExecutable) {

                }

                PrimaryButton(.settings) {

                }
            }
            Toggle(
                .automaticallyCheckForUpdates,
                isOn: $automaticallyCheckForUpdates
            )
        }
        .padding()
        .toolbar(removing: .title)
        .toolbarBackground(.hidden, for: .windowToolbar)
    }

}

// MARK: - Preview

#Preview {
    RootView()
}
