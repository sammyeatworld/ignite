//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

extension String {

    /// Unsafely interprets the memory of `value` as a null-terminated C string.
    /// - Warning: Only use this if you *know* `value`'s memory represents
    ///   a valid, null-terminated UTF-8 C string.
    public init<T>(rawCString value: T) {
        unsafe self.init(
            withUnsafePointer(to: value) {
                unsafe $0.withMemoryRebound(to: UInt8.self, capacity: MemoryLayout.size(ofValue: $0)) {
                    unsafe String(cString: $0)
                }
            }
        )
    }

}
