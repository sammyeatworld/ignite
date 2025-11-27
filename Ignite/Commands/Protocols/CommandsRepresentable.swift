//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI

protocol CommandsRepresentable: Commands {

    // MARK: - Associated Types

    associatedtype CommandExecutorType: CommandExecutor
    associatedtype CommandCategoryType: CommandCategory
    associatedtype CommandViewType: View

    // MARK: - Properties

    var executor: CommandExecutorType { get }

    // MARK: - Methods

    func commandView(for category: CommandCategoryType) -> CommandViewType

}
