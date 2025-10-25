//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import SwiftUI
import Defaults

enum SettingsTab: String, CaseIterable, Storable {

    case general
    case appearance
    case shortcuts
    case plugins
    case locations
    case updates
    case experimental
    case developer
    
    var title: LocalizedStringResource {
        switch self {
        case .general:
            return .general
        case .appearance:
            return .appearance
        case .shortcuts:
            return .shortcuts
        case .plugins:
            return .plugins
        case .locations:
            return .locations
        case .updates:
            return .updates
        case .experimental:
            return .experimental
        case .developer:
            return .developer
        }
    }
    
    var image: String {
        switch self {
        case .general:
            return SF.general.rawValue
        case .appearance:
            return SF.appearance.rawValue
        case .shortcuts:
            return SF.shortcuts.rawValue
        case .plugins:
            return SF.plugins.rawValue
        case .locations:
            return SF.locations.rawValue
        case .updates:
            return SF.updates.rawValue
        case .experimental:
            return SF.experimental.rawValue
        case .developer:
            return SF.developer.rawValue
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

extension SettingsTab: Identifiable {
    
    var id: Self {
        self
    }
    
}
