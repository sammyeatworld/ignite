//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct PaneView<Content: View>: View {
    
    // MARK: - Properties

    private let title: String
    private let image: String
    private let content: Content

    // MARK: - Initializer

    init(
        _ title: String,
        image: String,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.image = image
        self.content = content()
    }

    // MARK: - View

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Label(title, systemImage: image)
                    .bold()
                Spacer()
                HStack(alignment: .center, spacing: 8) {
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass.circle")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                }
                .buttonStyle(.plain)
            }
            .padding(8)
            .background(Color(nsColor: .secondarySystemFill))
            Divider()
            content
        }
    }

}

// MARK: - Preview

#Preview {
    PaneView("Registers", image: "cpu") {
        List {
            Text("Register1")
            Text("Register2")
            Text("Register3")
        }
    }
    .frame(minWidth: 800, minHeight: 600)
}
