//
//  DataViewModel.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct Movie: Identifiable, Decodable {
    let id: Int
    let movieImage: String
    let movieName: String
    let movieStudio: String
    let movieRate: Double
    let movieRatersCount: Int
    let charsPlayedInTheMovie: [String]
}

class MoviesViewModel: ObservableObject {
    @Published var movies: [Movie] = []

    init() {
        fetchMovieData()
    }

    func fetchMovieData() {
        if let url = Bundle.main.url(forResource: "Data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode([String: [Movie]].self, from: data)
                if let moviesArray = decodedData["Data"] {
                    self.movies = moviesArray
                } else {
                    print("Error: No 'Data' key found in JSON")
                }
            } catch {
                print("Error decoding JSON:", error)
            }
        } else {
            print("Error: JSON file not found")
        }
    }
}
