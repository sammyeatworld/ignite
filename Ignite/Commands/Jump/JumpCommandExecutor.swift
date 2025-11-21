//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import FactoryKit

@MainActor
final class JumpCommandExecutor: @MainActor CommandExecutorItem {
   
    @Environment(\.openWindow)
    private var openWindow

    func perform(_ command: JumpCommand) async {
        switch command {
        case .jumpToPreviousPosition:
            print("To be implemented")
        case .jumpToNextPosition:
            print("To be implemented")
        case .emptyNavigationStack:
            print("To be implemented")
        case .jumpToAddress:
            print("To be implemented")
        case .jumpByName:
            print("To be implemented")
        case .jumpToFunction:
            print("To be implemented")
        case .jumpToSegment:
            print("To be implemented")
        case .jumpToSegmentRegister:
            print("To be implemented")
        case .jumpToProblem:
            print("To be implemented")
        case .jumpToEntryPoint:
            print("To be implemented")
        case .jumpToFileOffset:
            print("To be implemented")
        case .listCrossReferencesTo:
            print("To be implemented")
        case .listCrossReferencesFrom:
            print("To be implemented")
        }
    }

}
