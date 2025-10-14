//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct LogView: View {

    // MARK: - Properties

    @State
    private var viewModel: LogViewModelProtocol
    
    // MARK: - Initializer

    init(viewModel: some LogViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        Text("Log")
    }

}

// MARK: - Preview

#Preview {
    LogView(viewModel: LogViewModel())
}
