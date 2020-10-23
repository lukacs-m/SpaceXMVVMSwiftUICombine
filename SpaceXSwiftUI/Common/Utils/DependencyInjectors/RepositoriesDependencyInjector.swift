//
//  RepositoriesDependencyInjector.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

final class RepositoriesDependencyInjector {
    
    // MARK: - Services
    private(set) lazy var services = ServicesDependencyInjector()
    
    private(set) lazy var launchesRepository: LaunchesRepositoryContract = LaunchesRepository(networkService: services.networkService)
}

// MARK: - Network service
private protocol LaunchesRepositoryContractProviding {
    var launchesRepository: LaunchesRepositoryContract { get }
}
extension RepositoriesDependencyInjector: LaunchesRepositoryContractProviding {}

