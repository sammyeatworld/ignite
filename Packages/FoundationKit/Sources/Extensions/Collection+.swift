//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public extension Collection {
    
    var isNotEmpty: Bool {
        !isEmpty
    }

    var asArray: [Element] {
        Array(self)
    }
    
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
    
}
