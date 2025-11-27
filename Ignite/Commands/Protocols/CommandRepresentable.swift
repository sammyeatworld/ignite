//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI

protocol CommandRepresentable: CaseIterable, Identifiable, Displayable, Storable {

    // MARK: - Properties

    var image: String? { get }
    var shortcut: KeyboardShortcut? { get }

}
