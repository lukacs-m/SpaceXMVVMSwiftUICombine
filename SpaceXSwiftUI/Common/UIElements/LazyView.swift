//
//  LazyView.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 17/10/2020.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
