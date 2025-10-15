//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import DarwinKit

public final class Debugger {
    
    // MARK: - Properties
    
    private var configuration: DebugConfiguration
    
    // MARK: - Initializer
    
    public init(configuration: DebugConfiguration) {
        self.configuration = configuration
    }
    
}

// MARK: - Methods

public extension Debugger {
    
    func attach(to pid: Int32) throws(DebugKitError) -> DebugSession {
        .init()
    }
    
}
