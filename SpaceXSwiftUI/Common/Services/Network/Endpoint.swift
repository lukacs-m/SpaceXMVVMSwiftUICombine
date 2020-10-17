//
//  Endpoint.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

import Foundation

struct Endpoint {
    var path: String
    var queryItems: [URLQueryItem] = []
}

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.spacexdata.com"
        components.path = "/v4" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}

extension Endpoint {
    static func launches(limit: Int?, offset: Int?) -> Self {
        var queryItems: [URLQueryItem] = []
        if let limit = limit {
            queryItems.append(URLQueryItem(name: "limit", value: "\(limit)"))
        }
        
        if let offset = offset {
            queryItems.append(URLQueryItem(name: "offset", value: "\(offset)"))
        }
        
        return Endpoint(path: "/launches/", queryItems: queryItems)
    }
    
    static func launch(by flightNumber: Int) -> Self {
        return Endpoint(path: "/launches/\(flightNumber))")
    }
}
