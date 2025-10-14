//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct DisassemblyView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: DisassemblyViewModelProtocol
    
    // MARK: - Initializer
    
    init(viewModel: some DisassemblyViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View
    var body: some View {
    }

}

// MARK: - Preview

#Preview {
    DisassemblyView(viewModel: DisassemblyViewModel())
}
