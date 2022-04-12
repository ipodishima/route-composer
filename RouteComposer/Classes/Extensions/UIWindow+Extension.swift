//
// RouteComposer
// UIWindow+Extension.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2022.
// Distributed under the MIT license.
//

import Foundation
import UIKit

/// `UIWindow` helper functions.
public extension UIWindow {

    /// The topmost `UIViewController` in the view controller stack.
    var topmostViewController: UIViewController? {
        var topmostViewController = rootViewController

        while let presentedViewController = topmostViewController?.presentedViewController, !presentedViewController.isBeingDismissed {
            topmostViewController = presentedViewController
        }

        return topmostViewController
    }

}
