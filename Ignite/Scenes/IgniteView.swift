//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct IgniteView: View {
    
    // MARK: - Properties
    
    @State
    private var isShowingProcesses = false
    @State
    private var isProcessOpened = false
    @State
    private var checkForUpdates = true
    
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
            VStack(alignment: .center, spacing: 16.0) {
                Button {
                    isShowingProcesses.toggle()
                } label: {
                    Text("Open Process")
                        .frame(width: C.buttonWidth)
                }
                Button {
                } label: {
                    Text("Load App")
                        .frame(width: C.buttonWidth)
                }
                Button {
                } label: {
                    Text("Settings")
                        .frame(width: C.buttonWidth)
                }
            }
            .controlSize(.large)
            Toggle(
                "Check for Updates",
                isOn: $checkForUpdates
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
