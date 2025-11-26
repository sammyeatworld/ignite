//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import FactoryKit

@MainActor
final class DebugCommandExecutor: @MainActor CommandExecutorItem {

    @Environment(\.openWindow)
    private var openWindow
    @Injected(\.debugService)
    private var debugService

    func execute(_ command: DebugCommand) async {
        switch command {
        case .pauseExecution:
            await debugService.pauseExecution()
        case .runToCursor:
            await debugService.runToCursor()
        case .runUntilReturn:
            await debugService.runUntilReturn()
        case .stepInto:
            await debugService.stepInto()
        case .stepOver:
            await debugService.stepOver()
        case .stepOut:
            await debugService.stepOut()
        case .stepIntoInstruction:
            await debugService.stepIntoInstruction()
        case .stepOverInstruction:
            await debugService.stepOverInstruction()
        case .stepIntoThread:
            await debugService.stepIntoThread()
        case .stepOverThread:
            await debugService.stepOverThread()
        case .deactivateBreakpoints:
            await debugService.deactivateBreakpoints()
        case .breakpoints:
            await debugService.fetchBreakpoints()
        case .attachToProcessByPidOrName:
            await debugService.attachToProcess("", pid: 0)
        case .attachToProcess:
            await debugService.attachToProcess("", pid: 0)
        case .detachFrom:
            await debugService.detachFromProcess()
        case .debugExecutable:
            await debugService.debugExecutable(at: .applicationDirectory)
        case .debugOptions:
            print("Implement open debug options")
        }
    }

}
