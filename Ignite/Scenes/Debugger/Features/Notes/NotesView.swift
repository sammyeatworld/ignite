//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct NotesView: View {
    
    // MARK: - Properties
    
    @State
    private var viewModel: NotesViewModelProtocol
    
    // MARK: - Initializer
    
    init(viewModel: some NotesViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - View

    var body: some View {
        Text("Notes")
    }

}

// MARK: - Preview

#Preview {
    NotesView(viewModel: NotesViewModel())
}
