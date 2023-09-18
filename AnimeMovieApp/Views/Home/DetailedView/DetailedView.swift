//
//  DetailedView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct DetailedView: View {
    @State private var animateButton = false
    @Environment(\.dismiss) var dismiss
    let movie : Movie
    
    
    private func starRatingView(rating: Double) -> some View {
          HStack(spacing: 4) {
              ForEach(1...5, id: \.self) { index in
                  Image(systemName: index <= Int(rating) ? "star.fill" : "star")
                      .foregroundColor(Color("StarColor"))
                      .frame(width: 16, height: 16)
              }
          }
      }
    
    
    var body: some View {
        VStack (spacing:0){
            Image(movie.movieImage)
                .resizable()
                .scaledToFill()
                .frame(width: 494, height: 442)
            
            Rectangle()
                .frame(width: .infinity, height: 13)
                .foregroundColor(Color("BackgroundColor"))
                .background(Color("BackgroundColor"))

                .blur(radius: 10)
                
            
            RoundedRectangle(cornerRadius: 0)
                .frame(width: .infinity, height: 620)
                .foregroundColor(Color("BackgroundColor"))
                .overlay {
                    VStack(spacing:30){
                        HStack {
                            VStack(alignment: .leading){
                                Text(movie.movieName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20 , design: .rounded))
                                    .fontWeight(.bold)
                                
                                Text(movie.movieStudio)
                                    .foregroundColor(Color("Grey"))
                            }
                            //                            VStack(spacing:-12){
                            //                                Text("2022")
                            //                                    .foregroundColor(Color("Grey"))
                            //                                    .font(.caption)
                            //                                    .fontWeight(.semibold)
                            //
                            //
                            //                                Text("-").opacity(0)
                            //                            }
                            Spacer()
                            
                            VStack(alignment: .trailing , spacing:8){
                                
                                starRatingView(rating: movie.movieRate)
                                
                                Text("From \(movie.movieRatersCount) users")
                                    .foregroundColor(Color("Grey"))
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                
                            }
                            
                        }
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex...")
                            .foregroundColor(Color("Grey"))
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical , 5)
                            .lineLimit(5)
                            .padding(.bottom , -20)
                        
                        ActorsView()
                            .padding(.top)
                        Spacer()
                        
                        
                        ButtonView(buttonText: "Watch now")
                            .offset(y:-150)
                        
                        
                        
                        
                    }
                    .padding()
                }
                
             
            
        }
     
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                     Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        dismiss()
                    }
                  }
              }
        .ignoresSafeArea()
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailedView(movie: Movie(id: 1, movieImage: "1", movieName: "The Movie", movieStudio: "Omers Studio", movieRate: 5.0, movieRatersCount: 123, charsPlayedInTheMovie: ["Omer Elmas", "Moro"]))
        }
    }
}
