//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct FileImporterButton: View {

    // MARK: - Properties

    @Binding
    var showingFileImporter: Bool

    // MARK: - Initializer

    init(isPresented showingFileImporter: Binding<Bool>) {
        self._showingFileImporter = showingFileImporter
    }

    // MARK: - View

    var body: some View {
        Button {
            showingFileImporter.toggle()
        } label: {
            Image(systemName: SF.folder.rawValue)
                .foregroundStyle(.secondary)
        }
        .buttonStyle(.plain)
    }

}

// MARK: - Preview

#Preview {
    FileImporterButton(isPresented: .constant(true))
}
