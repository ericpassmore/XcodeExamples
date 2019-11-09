//
//  Localized.swift
//  play
//
//  Created by Eric Passmore on 11/9/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import Foundation

extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Local") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
