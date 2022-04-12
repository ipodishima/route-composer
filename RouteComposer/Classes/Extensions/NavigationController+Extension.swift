//
// RouteComposer
// NavigationController+Extension.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2022.
// Distributed under the MIT license.
//

import Foundation
import UIKit

/// - The `UINavigationController` extension is to support the `ContainerViewController` protocol
extension UINavigationController: ContainerViewController {

    public var canBeDismissed: Bool {
        viewControllers.canBeDismissed
    }

}
