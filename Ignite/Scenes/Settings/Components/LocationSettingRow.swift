//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import SwiftUIKit
import UniformTypeIdentifiers

struct LocationSettingRow: View {
    
    // MARK: - Properties
    
    @State
    private var showingSheet = false
    @State
    private var showingFileImporter = false
    @State
    private var text = ""
    @Binding
    var location: Location
    
    // MARK: - Initializer
    
    init(_ location: Binding<Location>) {
        self._location = location
    }

    // MARK: - View

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text(location.title)

                HStack(alignment: .firstTextBaseline) {
                    Text(location.path.path())
                        .foregroundStyle(.secondary)

                    RevealInFinderButton(location.path)
                }
            }

            Spacer()

            SettingsInfoButton(location.type.title, showingInfo: $showingSheet)
        }
        .buttonStyle(.plain)
        .sheet(isPresented: $showingSheet) {
            VStack {
                Form {
                    Section {
                        Picker(location.title, selection: $location.type) {
                            ForEach(LocationType.allCases) { type in
                                Text(type.title).tag(type)
                            }
                        }
      
                        switch location.type {
                        case .default:
                            HStack(alignment: .firstTextBaseline) {
                                Text(location.path.path())
                                    .foregroundStyle(.secondary)

                                Button {
                                    NSWorkspace.shared.activateFileViewerSelecting([location.path])
                                } label: {
                                    Image(systemName: "arrowshape.right.fill")
                                        .foregroundStyle(.blue)
                                        .font(.caption)
                                }
                                .buttonStyle(.plain)
                            }
                        case .relative:
                            HStack(alignment: .firstTextBaseline) {
                                TextField("", text: $text)
                                    .autocorrectionDisabled()
                                    .onAppear {
                                        text = location.path.lastPathComponent
                                    }
                                    .onSubmit {
                                        location.path = URL(string: text)!
                                    }
                            }
                        case .custom:
                            HStack(alignment: .firstTextBaseline) {
                                TextField("", text: $text)
                                    .autocorrectionDisabled()
                                    .onAppear {
                                        text = location.path.lastPathComponent
                                    }
                                    .onSubmit {
                                        location.path = URL(string: text)!
                                    }
                                Button {
                                    showingFileImporter.toggle()
                                } label: {
                                    Image(systemName: "folder")
                                        .foregroundStyle(.secondary)
                                        .font(.caption)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        
                    }
                }

                Divider()

                HStack {
                    Spacer()
                    Button("Done") {
                        showingSheet.toggle()
                    }
                    .padding([.trailing, .bottom])
                }
            }
            .fileImporter(isPresented: $showingFileImporter, allowedContentTypes: [.folder]) { result in
                switch result {
                case .success(let file):
                    location.path = file.absoluteURL
                    text = location.path.path()
                case .failure(let failure):
                    print(failure.localizedDescription)
                }
            }
        }
    }

}

// MARK: - Preview

#Preview {
    LocationSettingRow(.constant(.init("Plugins", path: URL(string: "/user/sammy/ignite/plugins")!)))
}
