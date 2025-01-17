//
//  UISlider+Combine.swift
//  Pods
//
//  Created by Amine Bensalah on 19/04/2020.
//

import Combine
import UIKit
import CombineExtension

public extension CombineExtensions where Base: UISlider {
    /// A publisher emitting value changes for this slider.
    var value: AnyPublisher<Float, Never> {
        Publishers.ControlProperty(control: base,
                                   events: .defaultValueEvents,
                                   keyPath: \.value)
                  .eraseToAnyPublisher()
    }
}
