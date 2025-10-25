//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import Defaults

struct IgniteView: View {
    
    // MARK: - Properties
    
    @State
    private var isShowingProcesses = false
    @State
    private var isProcessOpened = false
    @Default(.Updates.automaticallyCheckForUpdates)
    var automaticallyCheckForUpdates: Bool
    
    // MARK: - Constants

    private enum C {

        static let buttonWidth = 180.0
        static let sheetWidth = 200.0
        static let sheetHeight = 344.0

    }
    
    // MARK: - Initializer
    
    init() {
        
    }

    // MARK: - View

    var body: some View {
        VStack(spacing: 24.0) {
            Image(.Hexley.clear)
            VStack(alignment: .center, spacing: 8.0) {
                Button {
                    isShowingProcesses.toggle()
                } label: {
                    Text("Open Process")
                        .padding(.vertical, 2)
                        .frame(width: C.buttonWidth)
                }
                .buttonStyle(.borderedProminent)
                Button {
                } label: {
                    Text("Open Executable")
                        .padding(.vertical, 2)
                        .frame(width: C.buttonWidth)
                }
                Button {
                } label: {
                    Text(.settings)
                        .padding(.vertical, 2)
                        .frame(width: C.buttonWidth)
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
    IgniteView()
}
