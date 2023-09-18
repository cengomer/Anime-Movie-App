//
//  Button.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct ButtonView: View {
    let buttonText : String
    var body: some View {
        Button {
            
        } label: {
            Text(buttonText)
                .font(.title2)
                .fontWeight(.bold)
        }.accentColor(.white)
            .frame(width: 211, height: 42)
            .clipShape(Capsule())
            .overlay {
                RoundedRectangle(cornerRadius: 20).stroke(Color("ButtonShadow"), lineWidth:2)            .shadow(color: Color("ButtonShadow"), radius: 3, x: 0, y: 0)
                    .shadow(color: .pink, radius: 3, x: -2, y: 0)


            }



    }
}

