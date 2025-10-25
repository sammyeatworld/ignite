//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import Defaults

enum SettingsGeneralTab: String, CaseIterable, Storable {
    
    case disassembly
    case analysis
    case crossReferences
    case debug
    case graph
    case miscellaneous
    
    var title: String {
        switch self {
        case .disassembly:
            "Disassembly"
        case .analysis:
            "Analysis"
        case .crossReferences:
            "Cross References"
        case .debug:
            "Debug"
        case .graph:
            "Graph"
        case .miscellaneous:
            "Miscellaneous"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .disassembly:
            SettingsDisassemblyView()
        case .analysis:
            SettingsAnalysisView()
        case .crossReferences:
            SettingsCrossReferencesView()
        case .debug:
            SettingsDebugView()
        case .graph:
            SettingsGraphView()
        case .miscellaneous:
            SettingsMiscellaneousView()
        }
    }
    
}

extension SettingsGeneralTab: Identifiable {
    
    var id: String {
        title
    }
    
}
