//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import DarwinKit

public final class DebugSession {
    
    // MARK: - Properties
    
    private let taskHandle: TaskHandle
    
    // MARK: - Initializer

    init(taskHandle: TaskHandle) {
        self.taskHandle = taskHandle
    }
    
}
