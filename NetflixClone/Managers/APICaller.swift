//
//  APICaller.swift
//  NetflixClone
//
//  Created by Jhenifer Dias on 06/11/23.
//

import Foundation

struct Constants {
    static let API_KEY = "98c904dde83593dc2f9649ead7d8625e"
    static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovie(completion: @escaping (String) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, error == nil else { return }
            do {
//                let results = try JSONDecoder().decode([TrendingMoviesResponse].self, from: data)
//                print(results)
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
