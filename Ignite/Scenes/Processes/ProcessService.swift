//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit
import DebugKit

// MARK: - Protocol

protocol ProcessServiceProtocol: AnyObject {
  
    // MARK: - Properties

    // MARK: - Methods
    
    func fetchProcesses() async -> [Process]
    
}

// MARK: - Implementation

final class ProcessService: ProcessServiceProtocol {
   
    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension ProcessService {

    func fetchProcesses() async -> [Process] {
        []
    }

}

// MARK: - Private Methods

private extension ProcessService {
    
}

// MARK: - Factory

extension Container {
    
    var processService: Factory<ProcessServiceProtocol> {
        self { ProcessService() }
            .cached
    }
    
}
