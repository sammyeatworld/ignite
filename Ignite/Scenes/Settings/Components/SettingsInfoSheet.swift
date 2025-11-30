//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsInfoSheet<Content: View>: View {

    // MARK: - Properties

    @Binding
    var showingInfo: Bool
    private let content: () -> Content

    // MARK: - Initializer

    init(isPresented showingInfo: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) {
        self._showingInfo = showingInfo
        self.content = content
    }

    // MARK: - View

    var body: some View {
        VStack(spacing: 0) {
            Form {
                content()
            }

            Divider()

            HStack(alignment: .bottom) {
                Spacer()
                Button("Done") {
                    showingInfo.toggle()
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.trailing, 20)
            .padding(.vertical)
        }
    }

}

// MARK: - Preview

#Preview {
    SettingsInfoSheet(isPresented: .constant(false)) {
        VStack {
            Text("Sheet Content")
            Button("Click") {
                print("Button Clicked!")
            }
        }
    }
}
