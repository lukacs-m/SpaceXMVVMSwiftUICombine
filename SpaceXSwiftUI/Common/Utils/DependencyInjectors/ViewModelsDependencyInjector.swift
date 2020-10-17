//
//  ViewModelsDependencyInjector.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

final class ViewModelsDependencyInjector {
    
    // MARK: - Repositories
    private(set) lazy var repositories = RepositoriesDependencyInjector()
    private let router: MainRouter
    
    init(router: MainRouter) {
        self.router = router
    }
    
    private(set) lazy var launchesViewModel = LaunchesViewModel(launchesRepository: repositories.launchesRepository, router: router)
    private(set) lazy var detailLaunchViewModel = DetailLaunchViewModel(launchesRepository:  repositories.launchesRepository)
}
