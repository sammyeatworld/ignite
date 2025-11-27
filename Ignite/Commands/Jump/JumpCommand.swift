//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import Defaults

enum JumpCommand: @MainActor CommandRepresentable {

    case jumpToPreviousPosition
    case jumpToNextPosition
    case emptyNavigationStack
    case jumpToAddress
    case jumpByName
    case jumpToFunction
    case jumpToSegment
    case jumpToSegmentRegister
    case jumpToProblem
    case jumpToEntryPoint
    case jumpToFileOffset
    case listCrossReferencesTo
    case listCrossReferencesFrom

    var title: String {
        switch self {
        case .jumpToPreviousPosition:
            "Jump to Previous Position"
        case .jumpToNextPosition:
            "Jump to Next Position"
        case .emptyNavigationStack:
            "Empty Navigation Stack"
        case .jumpToAddress:
            "Jump to Address..."
        case .jumpByName:
            "Jump by Name..."
        case .jumpToFunction:
            "Jump to Function..."
        case .jumpToSegment:
            "Jump to Segment..."
        case .jumpToSegmentRegister:
            "Jump to Segment Register..."
        case .jumpToProblem:
            "Jump to Problem"
        case .jumpToEntryPoint:
            "Jump to Entry Point"
        case .jumpToFileOffset:
            "Jump to File Offset..."
        case .listCrossReferencesTo:
            "List Cross-References to..."
        case .listCrossReferencesFrom:
            "List Cross-References from..."
        }
    }

    var image: String? {
        switch self {
        case .jumpToPreviousPosition:
            return SF.jumpToPreviousPosition.rawValue
        case .jumpToNextPosition:
            return SF.jumpToNextPosition.rawValue
        case .emptyNavigationStack:
            return SF.emptyNavigationStack.rawValue
        case .listCrossReferencesTo:
            return SF.listCrossReferencesTo.rawValue
        case .listCrossReferencesFrom:
            return SF.listCrossReferencesFrom.rawValue
        case .jumpToAddress,
             .jumpByName,
             .jumpToFunction,
             .jumpToSegment,
             .jumpToSegmentRegister,
             .jumpToProblem,
             .jumpToEntryPoint,
             .jumpToFileOffset:
            return nil
        }
    }

    var shortcut: KeyboardShortcut? {
        switch self {
        case .jumpToPreviousPosition:
            return nil
        case .jumpToNextPosition:
            return nil
        case .emptyNavigationStack:
            return nil
        case .jumpToAddress:
            return nil
        case .jumpByName:
            return .init("L", modifiers: [.command])
        case .jumpToFunction:
            return .init("P", modifiers: [.control])
        case .jumpToSegment:
            return .init("S", modifiers: [.control])
        case .jumpToSegmentRegister:
            return .init("G", modifiers: [.control])
        case .jumpToProblem:
            return .init("Q", modifiers: [.control])
        case .jumpToEntryPoint:
            return .init("E", modifiers: [.control])
        case .jumpToFileOffset:
            return nil
        case .listCrossReferencesTo:
            return .init("X", modifiers: .control)
        case .listCrossReferencesFrom:
            return .init("J", modifiers: .control)
        }
    }

    var category: JumpCommandCategory {
        switch self {
        case .jumpToPreviousPosition,
             .jumpToNextPosition,
             .emptyNavigationStack:
            return .navigation
        case .jumpToAddress,
             .jumpByName,
             .jumpToFunction,
             .jumpToSegment,
             .jumpToSegmentRegister,
             .jumpToProblem,
             .jumpToEntryPoint,
             .jumpToFileOffset:
            return .targets
        case .listCrossReferencesTo,
             .listCrossReferencesFrom:
            return .crossReferences
        }
    }

}

extension JumpCommand {

    var id: Self {
        self
    }

}
