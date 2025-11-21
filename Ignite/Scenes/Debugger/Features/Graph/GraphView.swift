//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct GraphView: View {

    // MARK: - Properties

    @State
    private var viewModel: GraphViewModelProtocol

    // MARK: - Initializer

    init(viewModel: some GraphViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        Text(.graph)
    }

}

// MARK: - Preview

#Preview {
    GraphView(viewModel: GraphViewModel())
}
