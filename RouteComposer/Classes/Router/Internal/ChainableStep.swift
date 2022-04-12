//
// RouteComposer
// ChainableStep.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2022.
// Distributed under the MIT license.
//

import Foundation
import UIKit

// Chainable step.
// Identifies that the step can be a part of the chain,
// e.g. when it comes to the presentation of multiple view controllers to reach destination.
protocol ChainableStep {

    // `RoutingStep` to be made by a `Router` before getting to this step.
    func getPreviousStep<Context>(with context: Context) -> RoutingStep?

}
