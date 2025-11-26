//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public extension URL {

    init(_ staticString: StaticString) throws {
        guard let url = Self(string: "\(staticString)") else {
            throw NetworkError.invalidURL
        }
        self = url
    }

}
