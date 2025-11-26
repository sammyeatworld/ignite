//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum SF: String {

    // MARK: - App

    case about = "info.circle"
    case settings = "gear"

    // MARK: - Jump Commands

    case jumpToPreviousPosition = "arrowshape.left.fill"
    case jumpToNextPosition = "arrowshape.right.fill"
    case emptyNavigationStack = "trash.fill"
    case listCrossReferencesTo = "point.topleft.down.curvedto.point.filled.bottomright.up"
    case listCrossReferencesFrom = "point.filled.topleft.down.curvedto.point.bottomright.up"

    // MARK: - Search Commands

    case nextCode = "text.alignleft"
    case nextData = "tablecells"

    // MARK: - Debug Commands

    case pauseExecution = "pause.fill"
    case runToCursor = "arrow.down.to.line"
    case runUntilReturn = "arrow.counterclockwise"
    case stepInto = "arrow.down.forward"
    case stepOver = "arrow.right"
    case stepOut = "arrowshape.turn.up.backward"
    case stepIntoInstruction = "arrow.down.right.circle"
    case stepOverInstruction = "arrow.right.circle"
    case stepIntoThread = "arrow.down.right.circle.dotted"
    case stepOverThread = "arrow.forward.circle.dotted"
    case attachToProcessByPidOrName = "link"

    // MARK: - Debugger Tabs

    case machO = "shippingbox"
    case disassembly = "puzzlepiece"
    case graph = "point.3.connected.trianglepath.dotted"
    case log = "note.text"
    case notes = "pencil.and.list.clipboard"
    case breakpoints = "stop.circle"
    case memoryMap = "memorychip"
    case callStack = "square.3.stack.3d.top.filled"

    // MARK: - Settings Tabs

    case general = "gearshape"
    case appearance = "paintbrush"
    case shortcuts = "keyboard"
    case plugins = "square.stack.3d.up"
    case locations = "folder"
    case updates = "arrow.clockwise"
    case experimental = "flask"
    case developer = "hammer"

    // MARK: - Miscellaneous

    case info = "info.circle.fill"
    case folder = "folder.circle"
    case finder = "finder"

}
