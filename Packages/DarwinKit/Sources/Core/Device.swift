//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public final class Device {

    // MARK: - Properties

    public static var isSIPEnabled: Bool {
        querySIPStatus()
    }

    // MARK: - Initializer

    private init() { }

}

// MARK: - Public Methods

public extension Device {

}

// MARK: - Private Methods

private extension Device {

    static func querySIPStatus() -> Bool {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/usr/bin/csrutil")
        process.arguments = ["status"]

        let pipe = Pipe()
        process.standardOutput = pipe
        process.standardError = pipe

        do {
            try process.run()
            process.waitUntilExit()

            if process.terminationStatus != 0 {
                return true
            }

            let data = pipe.fileHandleForReading.readDataToEndOfFile()
            let output = String(data: data, encoding: .utf8) ?? ""

            return output.lowercased().contains("enabled")
        } catch {
            return true
        }
    }

}
