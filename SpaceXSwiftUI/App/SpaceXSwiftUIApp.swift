//
//  SpaceXSwiftUIApp.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

import SwiftUI

@main
struct SpaceXSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MainAppView(with: MainAppViewModel(router: MainRouter()))
        }
    }
}
