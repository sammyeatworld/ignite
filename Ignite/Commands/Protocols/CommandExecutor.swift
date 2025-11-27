//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

@MainActor
protocol CommandExecutor: AnyObject {

    // MARK: - Associated Types

    associatedtype CommandRepresentableType: CommandRepresentable

    // MARK: - Methods

    func execute(_ command: CommandRepresentableType) async

}
