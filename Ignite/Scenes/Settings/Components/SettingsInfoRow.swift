//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsInfoRow<FooterContent: View, SheetContent: View>: View {

    // MARK: - Properties

    @State
    private var showingInfo = false
    private let title: String
    private let infoTitle: String?
    private let image: String?
    private let footer: () -> FooterContent
    private let sheet: () -> SheetContent

    // MARK: - Initializer

    init(
        _ title: String,
        infoTitle: String? = nil,
        image: String? = nil,
        @ViewBuilder footer: @escaping () -> FooterContent,
        @ViewBuilder sheet: @escaping () -> SheetContent
    ) {
        self.title = title
        self.infoTitle = infoTitle
        self.image = image
        self.footer = footer
        self.sheet = sheet
    }

    // MARK: - View

    var body: some View {
        HStack(alignment: .top) {
            if let image {
                Image(systemName: image)
                    .frame(width: 32, height: 32)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                footer()
            }

            Spacer()

            SettingsInfoButton(infoTitle, showingInfo: $showingInfo)
        }
        .sheet(isPresented: $showingInfo) {
            SettingsInfoSheet(isPresented: $showingInfo) {
                sheet()
            }
        }
    }
}

// MARK: - Preview

#Preview {
    SettingsInfoRow("Title", infoTitle: "Info Title", image: "arrow.up.bin") {
        Text("Footer Content")
            .foregroundStyle(.secondary)

        RevealInFinderButton(.homeDirectory)
    } sheet: {
        VStack {
            Text("Sheet content")
        }
    }
}
