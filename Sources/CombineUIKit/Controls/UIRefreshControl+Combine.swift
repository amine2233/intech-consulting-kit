//
//  UIRefreshControl+Combine.swift
//  ApplicationDelegate
//
//  Created by Amine Bensalah on 19/04/2020.
//

import Combine
import UIKit
import CombineExtension

public extension CombineExtensions where Base: UIRefreshControl {
    /// A publisher emitting refresh status changes from this refresh control.
    var isRefreshing: AnyPublisher<Bool, Never> {
        Publishers.ControlProperty(control: base,
                                   events: .defaultValueEvents,
                                   keyPath: \.isRefreshing)
                  .eraseToAnyPublisher()
    }
}
