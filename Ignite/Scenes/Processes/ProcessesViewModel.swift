//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit

// MARK: - Protocol

@MainActor
protocol ProcessesViewModelProtocol: AnyObject, Observable {
    
    // MARK: - Properties

    // MARK: - Methods
    
    func fetchProcesses() async

}

// MARK: - Implementation

@MainActor
@Observable final class ProcessesViewModel: ProcessesViewModelProtocol {
    
    // MARK: - Services
    
    @ObservationIgnored
    @Injected(\.processService)
    private var processService
    
    // MARK: - Properties
    
    // MARK: - Initializer

}

// MARK: - Public Methods

extension ProcessesViewModel {

    func fetchProcesses() async {
        let _ = await processService.fetchProcesses()
    }
   
}

// MARK: - Private Methods

private extension ProcessesViewModel {
    
}
