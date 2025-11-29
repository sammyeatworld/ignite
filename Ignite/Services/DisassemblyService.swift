//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit
import DisassemblyKit

// MARK: - Protocol

protocol DisassemblyServiceProtocol: AnyObject {

    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final actor DisassemblyService: DisassemblyServiceProtocol {

    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension DisassemblyService {

}

// MARK: - Private Methods

private extension DisassemblyService {

}

// MARK: - Factory

extension Container {

    var disassemblyService: Factory<DisassemblyServiceProtocol> {
        self { @MainActor in DisassemblyService() }
            .cached
    }

}
