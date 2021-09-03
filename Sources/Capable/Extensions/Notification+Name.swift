//
//  Notification.swift
//  Capable
//
//  Created by Christoph Wendt on 28.03.18.
//

import Foundation

/// Extension that defines notification names provided by the Capable framework.
public extension Notification.Name {
    /// Name of the notification that gets fired whenever an observed accessibility feature status changes.
    static let CapableFeatureStatusDidChange = Notification.Name("capable-feature-status-did-change")
}
