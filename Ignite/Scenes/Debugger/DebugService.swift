//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit
import DebugKit

// MARK: - Protocol

protocol DebugServiceProtocol: AnyObject {

    // MARK: - Properties

    // MARK: - Methods

    func pauseExecution() async
    func runToCursor() async
    func runUntilReturn() async
    func stepInto() async
    func stepOver() async
    func stepOut() async
    func stepIntoInstruction() async
    func stepOverInstruction() async
    func stepIntoThread() async
    func stepOverThread() async
    func deactivateBreakpoints() async
    func fetchBreakpoints() async
    func attachToProcess(_ name: String?, pid: Int32?) async
    func detachFromProcess() async
    func debugExecutable(at url: URL) async

}

// MARK: - Implementation

final actor DebugService: DebugServiceProtocol {

    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension DebugService {

    func pauseExecution() async {

    }

    func runToCursor() async {

    }

    func runUntilReturn() async {

    }

    func stepInto() async {

    }

    func stepOver() async {

    }

    func stepOut() async {

    }

    func stepIntoInstruction() async {

    }

    func stepOverInstruction() async {

    }

    func stepIntoThread() async {

    }

    func stepOverThread() async {

    }

    func deactivateBreakpoints() async {

    }

    func fetchBreakpoints() async {

    }

    func attachToProcess(_ name: String?, pid: Int32?) async {

    }

    func detachFromProcess() async {

    }

    func debugExecutable(at path: URL) async {

    }

}

// MARK: - Private Methods

private extension DebugService {

}

// MARK: - Factory

extension Container {

    var debugService: Factory<DebugServiceProtocol> {
        self { @MainActor in DebugService() }
            .cached
    }

}
