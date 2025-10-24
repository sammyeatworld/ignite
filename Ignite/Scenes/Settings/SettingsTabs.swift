//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI

enum SettingsTabs: CaseIterable {

    case general
    case appearance
    case shortcuts
    case plugins
    case locations
    case updates
    case experimental
    case developer
    
    var title: String {
        switch self {
        case .general:
            "General"
        case .appearance:
            "Appearance"
        case .shortcuts:
            "Shortcuts"
        case .plugins:
            "Plugins"
        case .locations:
            "Locations"
        case .updates:
            "Updates"
        case .experimental:
            "Experimental"
        case .developer:
            "Developer"
        }
    }
    
    var image: String {
        switch self {
        case .general:
            return "gearshape"
        case .appearance:
            return "paintbrush"
        case .shortcuts:
            return "keyboard"
        case .plugins:
            return "square.stack.3d.up"
        case .locations:
            return "folder"
        case .updates:
            return "arrow.clockwise"
        case .experimental:
            return "flask"
        case .developer:
            return "hammer"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .general:
            SettingsGeneralView()
        case .appearance:
            SettingsAppearanceView()
        case .shortcuts:
            SettingsShortcutsView()
        case .plugins:
            SettingsPluginsView()
        case .locations:
            SettingsLocationsView()
        case .updates:
            SettingsUpdatesView()
        case .experimental:
            SettingsExperimentalView()
        case .developer:
            SettingsDeveloperView()
        }
    }
    
}

extension SettingsTabs: Identifiable {
    
    var id: String {
        title
    }
    
}
