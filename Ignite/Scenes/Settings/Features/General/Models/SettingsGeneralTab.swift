//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import Defaults

enum SettingsGeneralTab: String, CaseIterable, Displayable, Storable {

    case analysis
    case darwin
    case debug
    case disassembly
    case graph
    case miscellaneous

    var title: String {
        switch self {
        case .analysis:
            LocalizedStringResource.analysis.key
        case .darwin:
            LocalizedStringResource.darwin.key
        case .debug:
            LocalizedStringResource.debug.key
        case .disassembly:
            LocalizedStringResource.disassembly.key
        case .graph:
            LocalizedStringResource.graph.key
        case .miscellaneous:
            LocalizedStringResource.miscellaneous.key
        }
    }

    @ViewBuilder
    var view: some View {
        switch self {
        case .analysis:
            SettingsAnalysisView()
        case .darwin:
            SettingsDarwinView()
        case .debug:
            SettingsDebugView()
        case .disassembly:
            SettingsDisassemblyView()
        case .graph:
            SettingsGraphView()
        case .miscellaneous:
            SettingsMiscellaneousView()
        }
    }

}

extension SettingsGeneralTab: Identifiable {

    var id: Self {
        self
    }

}
