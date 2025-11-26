//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import Defaults

enum SearchCommand: @MainActor CommandItem {

    case nextCode
    case nextData
    case immediateValue
    case nextImmediateValue
    case text
    case nextText
    case sequenceOfBytes
    case nextSequenceOfBytes
    case searchDirection

    var title: String {
        switch self {
        case .nextCode:
            "Next Code"
        case .nextData:
            "Next Data"
        case .immediateValue:
            "Immediate Value..."
        case .nextImmediateValue:
            "Next Immediate Value"
        case .text:
            "Text..."
        case .nextText:
            "Next Text"
        case .sequenceOfBytes:
            "Sequence of Bytes..."
        case .nextSequenceOfBytes:
            "Next Sequence of Bytes"
        case .searchDirection:
            "Search Direction"
        }
    }

    var image: String? {
        switch self {
        case .nextCode:
            return SF.nextCode.rawValue
        case .nextData:
            return SF.nextData.rawValue
        case .immediateValue,
             .nextImmediateValue,
             .text,
             .nextText,
             .sequenceOfBytes,
             .nextSequenceOfBytes,
             .searchDirection:
            return nil
        }
    }

    var shortcut: KeyboardShortcut? {
        switch self {
        case .nextCode:
            return .init("C", modifiers: .option)
        case .nextData:
            return .init("D", modifiers: .control)
        case .immediateValue:
            return .init("I", modifiers: .option)
        case .nextImmediateValue:
            return .init("I", modifiers: .control)
        case .text:
            return .init("T", modifiers: .option)
        case .nextText:
            return .init("T", modifiers: .control)
        case .sequenceOfBytes:
            return .init("B", modifiers: .option)
        case .nextSequenceOfBytes:
            return .init("B", modifiers: .control)
        case .searchDirection:
            return nil
        }
    }

    var group: SearchCommandGroup {
        switch self {
        case .nextCode,
             .nextData:
            return .searchType
        case .immediateValue,
             .nextImmediateValue,
             .text,
             .nextText,
             .sequenceOfBytes,
             .nextSequenceOfBytes:
            return .contentSearch
        case .searchDirection:
            return .options
        }
    }

}

extension SearchCommand {

    var id: Self {
        self
    }

}
