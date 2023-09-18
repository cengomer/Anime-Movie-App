//
//  HomePageView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundColor").ignoresSafeArea()

                VStack(alignment:.leading , spacing: 15){
                    
                    SearchView()
                    
                    Text("Categories.")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    HStack(spacing:30){
                        CatsView()
                        
                        AnimeView()
                    }
                    
                    Text("Most searched.")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Scrollview()
                    
                    Scrollview2()
                }.padding()
                
                
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Profile()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image("maria")
                       .resizable()
                       .scaledToFill()
                       .padding(2)
                       .frame(width: 32, height: 32)
                       .clipShape(Circle())
                       .overlay {
                           Circle().stroke(.white , lineWidth:2)
                       }
                    }

                        
                 
                      }
                  }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
