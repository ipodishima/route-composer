//
// RouteComposer
// InterceptableStep.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2022.
// Distributed under the MIT license.
//

import Foundation

protocol InterceptableStep where Self: PerformableStep {

    var interceptor: AnyRoutingInterceptor? { get }

    var postTask: AnyPostRoutingTask? { get }

    var contextTask: AnyContextTask? { get }

}
