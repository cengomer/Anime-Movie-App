//
//  Scrollview.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct Scrollview: View {
    @ObservedObject var viewModel = MoviesViewModel()

    var body: some View {
        
            ScrollView(.horizontal , showsIndicators: false) {
                HStack{
                    ForEach(viewModel.movies)
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

struct Scrollview_Previews: PreviewProvider {
    static var previews: some View {
        Scrollview()
            .environmentObject(MoviesViewModel())
    }
}
