//
//  Movie.swift
//  NetflixClone
//
//  Created by Jhenifer Dias on 06/11/23.
//

import Foundation

struct TrendingMoviesResponse: Codable {
        let page: Int
        let results: [Movies]
        let totalPages: Int
        let totalResults: Int

        enum CodingKeys: String, CodingKey {
            case page
            case results
            case totalPages = "total_pages"
            case totalResults = "total_results"
        }
    }

    struct Movies: Codable {
        let adult: Int?
        let backdropPath: String?
        let firstAirDate: String?
        let genreIds: [Int]?
        let id: Int?
        let mediaType: String?
        let name: String?
        let originCountry: [String]?
        let originalLanguage: String?
        let originalName: String?
        let overview: String?
        let popularity: Double?
        let posterPath: String?
        let releaseDate: String?
        let title: String?
        let video: Int?
        let voteAverage: Double?
        let voteCount: Int?

        enum CodingKeys: String, CodingKey {
            case adult
            case backdropPath = "backdrop_path"
            case firstAirDate = "first_air_date"
            case genreIds = "genre_ids"
            case id
            case mediaType = "media_type"
            case name
            case originCountry = "origin_country"
            case originalLanguage = "original_language"
            case originalName = "original_name"
            case overview
            case popularity
            case posterPath = "poster_path"
            case releaseDate = "release_date"
            case title
            case video
            case voteAverage = "vote_average"
            case voteCount = "vote_count"
        }
    }
