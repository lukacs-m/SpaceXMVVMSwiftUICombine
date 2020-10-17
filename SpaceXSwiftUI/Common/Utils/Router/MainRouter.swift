//
//  MainRouter.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

import SwiftUI

final class MainRouter {}

protocol RouteToLaunchesContract {
    func routeToLaunches() -> LaunchesView
}

extension MainRouter: RouteToLaunchesContract {
    func routeToLaunches() -> LaunchesView {
        LaunchesView()
    }
}

protocol RouteToRocketsContract {
    func routeToRockets() -> Text
}

extension MainRouter: RouteToRocketsContract {
    func routeToRockets() -> Text {
        Text("woot rockets")
    }
}

protocol RouteToDetailLaunchContract {
    func routeToDetailLaunch(for launch: Launch) -> DetailLaunchView
}

extension MainRouter: RouteToDetailLaunchContract {
    func routeToDetailLaunch(for launch: Launch) -> DetailLaunchView  {
        let detail = DetailLaunchView()
        detail.viewModel.setUpVM(for: launch)
        return detail
    }
}
