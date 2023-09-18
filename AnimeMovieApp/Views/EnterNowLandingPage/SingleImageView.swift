//
//  SingleImageView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct SingleImageView: View {
    let imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
        
    }
}
