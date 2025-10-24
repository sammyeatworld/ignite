//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

enum DebuggerTabs: CaseIterable {
    
    case machO
    case disassembly
    case graph
    case log
    case notes
    case breakpoints
    case memoryMap
    case callStack
    
}

extension DebuggerTabs {
    
    var title: LocalizedStringResource {
        switch self {
        case .machO:
            .machO
        case .disassembly:
            .disassembly
        case .graph:
            .graph
        case .log:
            .log
        case .notes:
            .notes
        case .memoryMap:
            .memoryMap
        case .callStack:
            .callStack
        case .breakpoints:
            .breakpoints
        }
    }
    
    var image: String {
        switch self {
        case .machO:
            SF.machO.rawValue
        case .disassembly:
            SF.disassembly.rawValue
        case .graph:
            SF.graph.rawValue
        case .log:
            SF.log.rawValue
        case .notes:
            SF.notes.rawValue
        case .breakpoints:
            SF.breakpoints.rawValue
        case .memoryMap:
            SF.memoryMap.rawValue
        case .callStack:
            SF.callStack.rawValue
        }
    }
    
    @ViewBuilder
    var body: some View {
        switch self {
        case .machO:
            MachOView(viewModel: MachOViewModel())
        case .disassembly:
            DisassemblyView(viewModel: DisassemblyViewModel())
        case .graph:
            GraphView(viewModel: GraphViewModel())
        case .log:
            LogView(viewModel: LogViewModel())
        case .notes:
            NotesView(viewModel: NotesViewModel())
        case .breakpoints:
            BreakpointsView(viewModel: BreakpointsViewModel())
        case .memoryMap:
            MemoryMapView(viewModel: MemoryMapViewModel())
        case .callStack:
            CallStackView(viewModel: CallStackViewModel())
        }
    }
    
}

extension DebuggerTabs: Identifiable {
    
    var id: Self {
        self
    }
    
}
