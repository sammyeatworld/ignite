//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct DebuggerView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: DebuggerViewModelProtocol

    // MARK: - Initializer
    
    init(viewModel: some DebuggerViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        VStack {
            TabView {
                ForEach(DebuggerTabs.allCases) { feature in
                    Tab(feature.title, systemImage: feature.image) {
                        feature.body
                    }
                }
            }
            .tabViewStyle(.grouped)
        }
    }
    
}

// MARK: - Preview

#Preview {
    DebuggerView(viewModel: DebuggerViewModel())
}
