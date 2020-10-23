//
//  Publisher+Extensions.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

import Combine

extension Publisher where Self.Failure == Never {
    func assignNoRetain<Root>(to keyPath: ReferenceWritableKeyPath< Root,
        Self.Output >, on object: Root) -> AnyCancellable where Root: AnyObject {
        sink { [weak object] (value) in
            object?[keyPath: keyPath] = value
        }
    }
}
