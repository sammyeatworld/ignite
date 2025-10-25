//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

// MARK: - App

extension Defaults.Keys {
    
}

// MARK: - Settings

extension Defaults.Keys {
    
    static let selectedSettingsTab = Key<SettingsTab>("selectedSettingsTab", default: .general)
    
    enum General {
        
        static let selectedGeneralTab = Key<SettingsGeneralTab>("selectedGeneralTab", default: .disassembly)
        
        enum Disassembly {
            
        }
        
        enum Analysis {
            
        }
        
        enum CrossReferences {
            
        }
        
        enum Debug {
            
        }
        
        enum Graph {
        
        }
        
        enum Miscellaneous {
            
        }
        
    }
    
    enum Appearance {
        
    }
    
    enum Shortcuts {
        
    }
    
    enum Plugins {
        
    }
    
    enum Locations {
        
    }
    
    enum Updates {
        
        static let automaticallyCheckForUpdates = Key<Bool>("automaticallyCheckForUpdates", default: true)
        static let automaticallyDownloadUpdates = Key<Bool>("automaticallyDownloadUpdates", default: false)
        static let updateInterval = Key<UpdateInterval>("updateInterval", default: .daily)
        static let updateBranch = Key<UpdateBranch>("updateBranch", default: .main)

    }
    
    enum Experimental {
        
    }
    
    enum Developer {
        
    }
    
}
