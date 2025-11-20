//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import UniformTypeIdentifiers

struct SettingsLocationPicker: View {
   
    // MARK: - Properties

    @State
    private var showingFileImporter = false
    @State
    private var locationPrompt = ""
    @Binding
    var location: Location

    // MARK: - Initializer

    init(_ location: Binding<Location>) {
        self._location = location
    }

    // MARK: - View

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Picker(location.title, selection: $location.type) {
                ForEach(LocationType.allCases) { type in
                    Text(type.title).tag(type)
                }
            }
            
            switch location.type {
            case .default:
                SettingsPathView(location.path)
            case .relative:
                TextField("", text: $locationPrompt)
            case .custom:
                HStack(alignment: .center) {
                    TextField("", text: $locationPrompt)
                    FileImporterButton(isPresented: $showingFileImporter)
                }
            }
        }
        .onAppear {
            locationPrompt = location.path.lastPathComponent
        }
        .fileImporter(isPresented: $showingFileImporter, allowedContentTypes: [.folder]) { result in
            switch result {
            case .success(let file):
                location.path = file.absoluteURL
                locationPrompt = location.path.path()
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }

}

// MARK: - Preview

#Preview {
    SettingsLocationPicker(.constant(.init("Location", path: .homeDirectory)))
}
