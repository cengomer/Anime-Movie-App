//
//  AnimeMovieAppApp.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

@main
struct AnimeMovieAppApp: App {
    @StateObject var viewModel = MoviesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
