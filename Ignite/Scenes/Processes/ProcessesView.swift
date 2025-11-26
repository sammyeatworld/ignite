//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct ProcessesView: View {

    // MARK: - Properties

    private let viewModel: ProcessesViewModelProtocol

    // MARK: - Initializer

    init(viewModel: ProcessesViewModelProtocol = ProcessesViewModel()) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        VStack {
        }
    }

}

// MARK: - Preview

#Preview {
    ProcessesView(viewModel: ProcessesViewModel())
}
