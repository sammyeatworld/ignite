//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

@MainActor
protocol CommandExecutorItem: AnyObject {

    // MARK: - Associated Types

    associatedtype CommandItemType: CommandItem

    // MARK: - Methods

    func execute(_ command: CommandItemType) async

}
