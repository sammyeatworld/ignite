//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct AboutView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: AboutViewModelProtocol
    
    // MARK: - Initializer
    
    init(viewModel: some AboutViewModelProtocol) {
        self.viewModel = viewModel
    }
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack(alignment: .center, spacing: 32.0) {
                Image(.Hexley.white)
                VStack(alignment: .leading) {
                    Text("Ignite")
                        .font(.largeTitle)
                        .padding(.bottom, 4.0)
                    Text("Version " + "1.0")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                        .padding(.bottom, 32.0)
                    Text("Copyright © 2025 Samuel Majtan. All rights reserved.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .lineSpacing(4.0)
                }
            }
            .padding(.bottom, 16.0)
            HStack {
                Button("Acknowledgements") { }
            }
        }
        .padding()
        .toolbar(removing: .title)
        .toolbarBackground(.hidden, for: .windowToolbar)
    }

}

// MARK: - Preview

#Preview {
    AboutView(viewModel: AboutViewModel())
}
