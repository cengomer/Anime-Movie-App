//
//  Scrollview.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct Scrollview2: View {
    @ObservedObject var viewModel = MoviesViewModel()

    var body: some View {
        
            ScrollView(.horizontal , showsIndicators: false) {
                HStack{
                    ForEach(viewModel.movies.suffix(7))
                    { movie in
                        NavigationLink {
                            DetailedView(movie: movie)
                                .navigationBarBackButtonHidden()
                        } label: {
                            MostSearchedView(movie: movie)

                        }

                    }
                } .padding(.horizontal,2)
            }
        
    }
}

