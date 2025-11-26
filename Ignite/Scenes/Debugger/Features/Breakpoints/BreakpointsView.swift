//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct BreakpointsView: View {

    // MARK: - Properties

    @State
    private var viewModel: BreakpointsViewModelProtocol

    // MARK: - Initializer

    init(viewModel: some BreakpointsViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        Text(.breakpoints)
    }

}

// MARK: - Preview

#Preview {
    BreakpointsView(viewModel: BreakpointsViewModel())
}
