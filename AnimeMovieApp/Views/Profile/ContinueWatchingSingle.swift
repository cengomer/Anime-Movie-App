//
//  ContinueWatchingSingle.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 10.08.2023.
//

import SwiftUI

struct ContinueWatchingSingle: View {
    let image : String
    let movieName: String
    let episoide : String
    let lineWidth : CGFloat
    let xDirection : CGFloat
    
    var body: some View {
        ZStack {
            VStack(alignment:.leading) {
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 162, height: 124)
                    .cornerRadius(8)
                
                VStack (alignment:.leading , spacing: 4){
                    Text(movieName)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(episoide)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Grey"))
                }

            }
            
            Rectangle()
                .frame(maxWidth: lineWidth, maxHeight: 2)
                .foregroundColor(Color("WatchLine"))
                .offset(x:xDirection,y:37)
        }
    }
}

//struct ContinueWatchingSingle_Previews: PreviewProvider {
//    static var previews: some View {
//        ContinueWatchingSingle()
//    }
//}
