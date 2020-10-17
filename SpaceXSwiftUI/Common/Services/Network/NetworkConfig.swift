//
//  NetworkConfig.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

struct NetworkConfig {
    
    static let baseUrl = "https://api.spacexdata.com/"
    static let apiVersion = "v4"
    static let limitDisplay = 20
    
    static func getBaseUrl() -> String {
        return "\(baseUrl)\(apiVersion)"
    }
}
