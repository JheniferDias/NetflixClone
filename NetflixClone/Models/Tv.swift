//
//  Tv.swift
//  NetflixClone
//
//  Created by Jhenifer Dias on 24/11/23.
//

import Foundation

struct MediaResultTv: Codable {
        let page: Int?
        let results: [Tv]
        let totalPages: Int?
        let totalResults: Int?
    
}

struct Tv: Codable, Identifiable {
    let id: Int?
    let adult: Bool?
    let backdropPath: String?
    let title: String?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let posterPath: String?
    let mediaType: String?
    let genreIds: [Int]?
    let popularity: Double?
    let releaseDate: String?
    let firstAirDate: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    let name: String?
    let originCountry: [String]?

    enum CodingKeys: String, CodingKey {
        case id, adult, title, overview, mediaType, genreIds, popularity, video, voteAverage, voteCount, name
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case firstAirDate = "first_air_date"
        case originCountry = "origin_country"
    }
}
