//
//  AnimeView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct AnimeView: View {
    @State private var scaled = false

    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 163, height: 148)
                    .rotation3DEffect(.degrees(15), axis: (x: 1, y: 0, z: 1))
                    .foregroundColor(Color("BackgroundColor"))
                    .overlay {
                        LinearGradient(
                                  colors: [ Color("OrangeWhite"),Color("OrangeDark")],
                                  startPoint: .bottom,
                                  endPoint: .top
                              )
                        .cornerRadius(20)
                        .rotation3DEffect(.degrees(15), axis: (x: 0, y: 5, z: 1))
                        
                        VStack(alignment: .leading){
                            Text("Animes")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("532 Titles")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity,  alignment: .topLeading)
                            .padding(.horizontal , 5)
                    }
            }
            .onAppear {
                withAnimation (.easeInOut(duration: 2)){
                    scaled = true

                }
            }
            
            Image("Anime")
                .scaleEffect(scaled ? 1 : 0.5)
                .offset(x:45)
        }
    }
}

struct AnimeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeView()
    }
}
