//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public extension URL {

    init(_ staticString: StaticString) throws(URLError) {
        guard let url = Self(string: "\(staticString)") else {
            throw URLError(.badURL)
        }
        self = url
    }

}
