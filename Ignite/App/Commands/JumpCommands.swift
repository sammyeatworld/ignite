//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct JumpCommands: Commands {

    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        CommandMenu(.jump) {
            Button(.jumpToPreviousPosition, systemImage: SF.jumpToPreviousPosition.rawValue) {
            }
            Button(.jumpToNextPosition, systemImage: SF.jumpToNextPosition.rawValue) {
            }
            Button(.emptyNavigationStack, systemImage: SF.emptyNavigationStack.rawValue) {
            }
            Divider()
            Button(.jumpToAddress) {
            }
            Button(.jumpByName) {
            }
            Button(.jumpToFunction) {
            }
            Button(.jumpToSegment) {
            }
            Button(.jumpToSegmentRegister) {
            }
            Button(.jumpToProblem) {
            }
            Button(.jumpToEntryPoint) {
            }
            Button(.jumpToFileOffset) {
            }
            Divider()
            Button(.listCrossReferencesTo, systemImage: SF.listCrossReferencesTo.rawValue) {
            }
            Button(.listCrossReferencesFrom, systemImage: SF.listCrossReferencesFrom.rawValue) {
            }
        }
    }

}
