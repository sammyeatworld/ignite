//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import Defaults

enum DebugCommand: @MainActor CommandRepresentable {

    case pauseExecution
    case runToCursor
    case runUntilReturn
    case stepInto
    case stepOver
    case stepOut
    case stepIntoInstruction
    case stepOverInstruction
    case stepIntoThread
    case stepOverThread
    case deactivateBreakpoints
    case breakpoints
    case attachToProcessByPidOrName
    case attachToProcess
    case detachFrom
    case debugExecutable
    case debugOptions

    var title: String {
        switch self {
        case .pauseExecution:
            "Pause Execution"
        case .runToCursor:
            "Run to Cursor"
        case .runUntilReturn:
            "Run Until Return"
        case .stepInto:
            "Step Into"
        case .stepOver:
            "Step Over"
        case .stepOut:
            "Step Out"
        case .stepIntoInstruction:
            "Step Into Instruction"
        case .stepOverInstruction:
            "Step Over Instruction"
        case .stepIntoThread:
            "Step Into Thread"
        case .stepOverThread:
            "Step Over Thread"
        case .deactivateBreakpoints:
            "Deactivate Breakpoints"
        case .breakpoints:
            "Breakpoints"
        case .attachToProcessByPidOrName:
            "Attach to Process by PID or Name..."
        case .attachToProcess:
            "Attach to Process"
        case .detachFrom:
            "Detach From"
        case .debugExecutable:
            "Debug Executable..."
        case .debugOptions:
            "Debug Options"
        }
    }

    var image: String? {
        switch self {
        case .pauseExecution:
            return SF.pauseExecution.rawValue
        case .runToCursor:
            return SF.runToCursor.rawValue
        case .runUntilReturn:
            return SF.runUntilReturn.rawValue
        case .stepInto:
            return SF.stepInto.rawValue
        case .stepOver:
            return SF.stepOver.rawValue
        case .stepOut:
            return SF.stepOut.rawValue
        case .stepIntoInstruction:
            return SF.stepIntoInstruction.rawValue
        case .stepOverInstruction:
            return SF.stepOverInstruction.rawValue
        case .stepIntoThread:
            return SF.stepIntoThread.rawValue
        case .stepOverThread:
            return SF.stepOverThread.rawValue
        case .deactivateBreakpoints:
            return nil
        case .breakpoints:
            return SF.breakpoints.rawValue
        case .attachToProcessByPidOrName:
            return SF.attachToProcessByPidOrName.rawValue
        case .attachToProcess:
            return nil
        case .detachFrom:
            return nil
        case .debugExecutable:
            return nil
        case .debugOptions:
            return nil
        }
    }

    var shortcut: KeyboardShortcut? {
        switch self {
        case .pauseExecution:
            return .init("Y", modifiers: [.control, .command])
        case .runToCursor:
            return .init("C", modifiers: [.control, .command])
        case .runUntilReturn:
            return .init("R", modifiers: [.control, .command])
        case .stepInto:
            return nil
        case .stepOver:
            return nil
        case .stepOut:
            return nil
        case .stepIntoInstruction:
            return nil
        case .stepOverInstruction:
            return nil
        case .stepIntoThread:
            return nil
        case .stepOverThread:
            return nil
        case .deactivateBreakpoints:
            return .init("Y", modifiers: .command)
        case .breakpoints:
            return nil
        case .attachToProcessByPidOrName:
            return .init("P", modifiers: [.control, .command])
        case .attachToProcess:
            return nil
        case .detachFrom:
            return nil
        case .debugExecutable:
            return nil
        case .debugOptions:
            return nil
        }
    }

    var category: DebugCommandCategory {
        switch self {
        case .pauseExecution,
                .runToCursor,
                .runUntilReturn:
            return .execution
        case .stepInto,
                .stepOver,
                .stepOut,
                .stepIntoInstruction,
                .stepOverInstruction,
                .stepIntoThread,
                .stepOverThread:
            return .stepping
        case .deactivateBreakpoints,
                .breakpoints:
            return .breakpoints
        case .attachToProcessByPidOrName,
                .attachToProcess,
                .detachFrom,
                .debugExecutable:
            return .attach
        case .debugOptions:
            return .options
        }
    }

}

extension DebugCommand {

    var id: Self {
        self
    }

}
