//
//  ServicesDependencyInjector.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

final class ServicesDependencyInjector {
    private(set) lazy var networkService: NetworkServiceContract = NetworkService()
}

// MARK: - Services

// MARK: - Network service
private protocol NetworkServiceContractProviding {
    var networkService: NetworkServiceContract { get }
}
extension ServicesDependencyInjector: NetworkServiceContractProviding {}

