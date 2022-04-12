//
// RouteComposer
// TabBarControllerStep.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2022.
// Distributed under the MIT license.
//

import UIKit

/// Default tab bar container step
public final class TabBarControllerStep<VC: UITabBarController, Context>: SingleContainerStep<NilFinder<VC, Context>, TabBarControllerFactory<VC, Context>> {

    // MARK: Methods

    /// Constructor
    public init() {
        super.init(finder: NilFinder(), factory: TabBarControllerFactory<VC, Context>())
    }

}
