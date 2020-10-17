//
//  Launches.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//

import Foundation

typealias Launches = [Launch]

struct Launch: Codable {
    let fairings: Fairings?
    let links: Links
    let staticFireDateUTC: String?
    let staticFireDateUnix: Int?
    let tbd, net: Bool
    let window: Int?
    let rocket: String
    let success: Bool?
    let details: String?
    let crew, ships, capsules, payloads: [String]
    let launchpad: String
    let autoUpdate: Bool
    let failures: [Failure]
    let flightNumber: Int
    let name, dateUTC: String
    let dateUnix: Int
    let datePrecision: String
    let upcoming: Bool
    let cores: [Core]
    let id: String

    enum CodingKeys: String, CodingKey {
        case fairings, links
        case staticFireDateUTC = "static_fire_date_utc"
        case staticFireDateUnix = "static_fire_date_unix"
        case tbd, net, window, rocket, success, details, crew, ships, capsules, payloads, launchpad
        case autoUpdate = "auto_update"
        case failures
        case flightNumber = "flight_number"
        case name
        case dateUTC = "date_utc"
        case dateUnix = "date_unix"
        case datePrecision = "date_precision"
        case upcoming, cores, id
    }
}

// MARK: - Core
struct Core: Codable {
    let core: String?
    let flight: Int?
    let gridfins, legs, reused, landingAttempt: Bool?
    let landingSuccess: Bool?
    let landingType: String?
    let landpad: String?

    enum CodingKeys: String, CodingKey {
        case core, flight, gridfins, legs, reused
        case landingAttempt = "landing_attempt"
        case landingSuccess = "landing_success"
        case landingType = "landing_type"
        case landpad
    }
}

// MARK: - Failure
struct Failure: Codable {
    let time: Int
    let altitude: Int?
    let reason: String
}

// MARK: - Fairings
struct Fairings: Codable {
    let reused, recoveryAttempt, recovered: Bool?
    let ships: [String]

    enum CodingKeys: String, CodingKey {
        case reused
        case recoveryAttempt = "recovery_attempt"
        case recovered, ships
    }
}

// MARK: - Links
struct Links: Codable {
    let patch: Patch
    let reddit: Reddit
    let flickr: Flickr
    let presskit: String?
    let webcast: String?
    let youtubeID: String?
    let article: String?
    let wikipedia: String?

    enum CodingKeys: String, CodingKey {
        case patch, reddit, flickr, presskit, webcast
        case youtubeID = "youtube_id"
        case article, wikipedia
    }
    
    //var youTubeVideoId: String? {
    //    guard let link = videoLink else { return nil }
    //    guard let url = URL(string: link) else { return nil }
    //    guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else { return nil }
    //    guard let host = components.host else { return nil }
    //    guard host.contains("youtube.com") else { return nil }
    //    return components.queryItems?.first(where: { $0.name == "v" })?.value
    //}
}

// MARK: - Flickr
struct Flickr: Codable {
    let small: [String]
    let original: [String]
}

// MARK: - Patch
struct Patch: Codable {
    let small, large: String?
}

// MARK: - Reddit
struct Reddit: Codable {
    let campaign: String?
    let launch: String?
    let media, recovery: String?
}
