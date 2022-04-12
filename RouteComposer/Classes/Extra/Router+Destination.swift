//
// RouteComposer
// Router+Destination.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2022.
// Distributed under the MIT license.
//

import Foundation
import UIKit

public extension Router {

    // MARK: Navigation methods for the Destination instance

    /// Navigates the application to the view controller configured in `Destination` with the `Context` provided.
    ///
    /// - Parameters:
    ///   - destination: `Destination` instance.
    ///   - animated: if true - the navigation should be animated where it is possible.
    ///   - completion: completion block.
    func navigate<VC: UIViewController, C>(to destination: Destination<VC, C>, animated: Bool = true, completion: ((_: RoutingResult) -> Void)? = nil) throws {
        try navigate(to: destination.step, with: destination.context, animated: animated, completion: completion)
    }

    /// Navigates the application to the view controller configured in `Destination` with the `Context` provided.
    /// Method does not throw errors, but propagates them to the completion block.
    ///
    /// - Parameters:
    ///   - destination: `Destination` instance.
    ///   - animated: if true - the navigation should be animated where it is possible.
    ///   - completion: completion block.
    func commitNavigation<VC: UIViewController, C>(to destination: Destination<VC, C>, animated: Bool = true, completion: ((_: RoutingResult) -> Void)? = nil) {
        do {
            try navigate(to: destination, animated: animated, completion: completion)
        } catch {
            completion?(.failure(error))
        }
    }

}
