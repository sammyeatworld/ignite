//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

@MainActor
final class SearchCommandExecutor: @MainActor CommandExecutorItem {

    func perform(_ command: SearchCommand) async {
        switch command {
        case .nextCode:
            print("To be implemented")
        case .nextData:
            print("To be implemented")
        case .immediateValue:
            print("To be implemented")
        case .nextImmediateValue:
            print("To be implemented")
        case .text:
            print("To be implemented")
        case .nextText:
            print("To be implemented")
        case .sequenceOfBytes:
            print("To be implemented")
        case .nextSequenceOfBytes:
            print("To be implemented")
        case .searchDirection:
            print("To be implemented")
            
        }
    }

}
