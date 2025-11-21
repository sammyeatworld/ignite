//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct MachOView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: MachOViewModelProtocol
    
    // MARK: - Initializer
    
    init(viewModel: some MachOViewModelProtocol) {
        self.viewModel = viewModel
    }
    
    // MARK: - View

    var body: some View {
        VStack{
            Text(.machO)
        }
    }
    
}

// MARK: - Preview

#Preview {
    MachOView(viewModel: MachOViewModel())
}
