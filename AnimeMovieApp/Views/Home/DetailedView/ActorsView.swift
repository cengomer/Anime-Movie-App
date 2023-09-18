//
//  ActorsView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct ActorsView: View {
    var body: some View {
        VStack(spacing:15){
            HStack (spacing:25){
                SingleActorView()
                SingleActorView()
            }
            HStack (spacing:25){
                SingleActorView()
                SingleActorView()
            }
        }
        .offset(x:-10)
    }
}

struct ActorsView_Previews: PreviewProvider {
    static var previews: some View {
        ActorsView()
    }
}
