//
//  DependencyInjector.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

final class DependencyInjector {
    
    static let shared = DependencyInjector()
    private init() {}
    
    private let router = MainRouter()
    
    // MARK: - ViewModels
    private(set) lazy var viewModels = ViewModelsDependencyInjector(router: router)
}
