//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct MemoryMapView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: MemoryMapViewModelProtocol
    
    // MARK: - Initializer
    
    init(viewModel: some MemoryMapViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        Text("Memory Map")
    }

}

// MARK: - Preview

#Preview {
    MemoryMapView(viewModel: MemoryMapViewModel())
}
