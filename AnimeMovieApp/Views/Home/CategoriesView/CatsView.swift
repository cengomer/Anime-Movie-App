//
//  CatsView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct CatsView: View {
    @State private var scaled = false
    var body: some View {
        ZStack {
            
            
            VStack {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 163, height: 148)
                    .foregroundColor(Color("BackgroundColor"))

                    .overlay {
                        LinearGradient(
                                  colors: [ Color("DarkNeon"),Color("Neon")],
                                  startPoint: .bottom,
                                  endPoint: .top
                              )
                        .cornerRadius(20)
                        .rotation3DEffect(.degrees(20), axis: (x: -1, y: -1.7, z: 0))
                        
                        VStack(alignment: .leading){
                            Text("Movies")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("532 Titles")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity,  alignment: .topTrailing)
                    }
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 2)) {
                    scaled = true

                }
            }
            
            Image("SpiderMan")
                .scaleEffect(scaled ? 1 : 0.5)
                .offset(x:-30)
        }

    }
}

struct CatsView_Previews: PreviewProvider {
    static var previews: some View {
        CatsView()
    }
}
