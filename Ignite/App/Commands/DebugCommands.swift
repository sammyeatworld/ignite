//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct DebugCommands: Commands {
    
    @Environment(\.openWindow) private var openWindow
    
    var body: some Commands {
        CommandMenu(.debug) {
            Button(.pauseExecution, systemImage: SF.pauseExecution.rawValue) {
            }
            Button(.runToCursor, systemImage: SF.runToCursor.rawValue) {
            }
            Button(.runUntilReturn, systemImage: SF.runUntilReturn.rawValue) {
            }
            Button(.stepInto, systemImage: SF.stepInto.rawValue) {
            }
            Button(.stepOver, systemImage: SF.stepOver.rawValue) {
            }
            Button(.stepOut, systemImage: SF.stepOut.rawValue) {
            }
            Button(.stepIntoInstruction, systemImage: SF.stepIntoInstruction.rawValue) {
            }
            Button(.stepOverInstruction, systemImage: SF.stepOverInstruction.rawValue) {
            }
            Button(.stepIntoThread, systemImage: SF.stepIntoThread.rawValue) {
            }
            Button(.stepOverThread, systemImage: SF.stepOverThread.rawValue) {
            }
            Divider()
            Button(.deactivateBreakpoints) {
            }
            Menu(.breakpoints) {
            }
            Divider()
            Button(.attachToProcessByPidOrName, systemImage: SF.attachToProcessByPidOrName.rawValue) {
            }
            Menu(.attachToProcess) {
                
            }
            Button(.detachFrom) {
            }
            Button(.debugExecutable) {
            }
            Divider()
            Button(.debugOptions) {
            }
        }
    }

}
