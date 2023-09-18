//
//  SingleActorView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct SingleActorView: View {
    var body: some View {
        HStack {
            
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 163, height: 48)
                .foregroundColor(Color("RectangleColor"))
                .overlay {
                    RoundedRectangle(cornerRadius: 16).stroke(Color("Grey") , lineWidth: 3)
                    
                    VStack(alignment:.leading){
                        Text("Maria Espaes")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("As Morbius")
                            .font(.system(size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.horizontal)
                }
                .offset(x:190)
            
            Circle()
                .frame(width: 52, height: 52)
                .overlay {
                    Circle().stroke(Color("Neon") , lineWidth: 3)
                    Image("Avatar")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                }

            
           
                
            
        }.frame(width: 171, height: 52)
        
            .offset(x:-140)
    }
}

struct SingleActorView_Previews: PreviewProvider {
    static var previews: some View {
        SingleActorView()
    }
}
