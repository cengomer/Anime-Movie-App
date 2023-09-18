//
//  MostSearchedView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct MostSearchedView: View {
    let movie: Movie

    var body: some View {
        VStack  {
            Image(movie.movieImage)
                .resizable()
                .scaledToFill()
                .frame(width: 124, height: 124)
                .cornerRadius(24)
            
            VStack(spacing:8){
                Text(movie.movieName.prefix(9))
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text("2022")
                    .font(.caption)
                    .foregroundColor(Color("Grey"))
            }
            
        }
    }
}

struct MostSearchedView_Previews: PreviewProvider {
    static var previews: some View {
        MostSearchedView(movie: Movie(id: 1, movieImage: "1", movieName: "The Avengers", movieStudio: "Universal Pictures", movieRate: 4.7, movieRatersCount: 321, charsPlayedInTheMovie: ["Marty McFly", "Doc Brown"]))
    }
}
