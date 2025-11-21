//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct CallStackView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: CallStackViewModelProtocol
    
    // MARK: - Initializer
    
    init(viewModel: some CallStackViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        Text(.callStack)
    }

}

// MARK: - Preview

#Preview {
    CallStackView(viewModel: CallStackViewModel())
}
