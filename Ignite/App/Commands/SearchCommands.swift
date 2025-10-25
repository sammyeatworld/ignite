//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SearchCommands: Commands {

    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        CommandMenu(.search) {
            Button(.nextCode, systemImage: SF.nextCode.rawValue) {
            }
            Button(.nextData, systemImage: SF.nextData.rawValue) {
            }
            Divider()
            Button(.immediateValue) {
            }
            Button(.nextImmediateValue) {
            }
            Button(.text) {
            }
            Button(.nextText) {
            }
            Button(.sequenceOfBytes) {
            }
            Button(.nextSequenceOfBytes) {
            }
            Divider()
            Button(.searchDirection) {
            }
        }
    }

}
