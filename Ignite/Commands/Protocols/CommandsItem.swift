//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI

protocol CommandsItem: Commands {

    // MARK: - Associated Types

    associatedtype CommandExecutorType: CommandExecutorItem
    associatedtype CommandGroupType: CommandGroupItem
    associatedtype CommandViewType: View

    // MARK: - Properties

    var executor: CommandExecutorType { get }

    // MARK: - Methods

    func commandView(for group: CommandGroupType) -> CommandViewType

}
