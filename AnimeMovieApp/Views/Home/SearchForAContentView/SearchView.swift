//
//  SearchView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(alignment: .leading)
        {
            Text("Search for a content")
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Button {
                
            } label: {
                Text("Search for a content..")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
            }.accentColor(.white)
                .padding(.horizontal)

                .frame(maxWidth: .infinity,alignment: .leading)
                .frame(width: 361, height: 52)
                .background(Color("SearchView"))
                .clipShape(Capsule())
                .overlay {
                    RoundedRectangle(cornerRadius: 20).stroke(Color("ButtonShadow"), lineWidth:2)            .shadow(color: Color("ButtonShadow"), radius: 3, x: 0, y: 0)
                        .shadow(color: .pink, radius: 3, x: 0, y: 0)
                    
                    
            }
                .foregroundColor(.gray)
                
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
