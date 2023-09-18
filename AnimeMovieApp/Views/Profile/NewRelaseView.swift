//
//  NewRelaseView.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 10.08.2023.
//

import SwiftUI

struct NewRelaseView: View {
    var body: some View {
        ZStack{
            Image("13")
                .resizable()
                .scaledToFill()
                .frame(width: 342, height: 187)
            
            HStack {
                VStack (alignment:.leading){
                    Text("Morbius")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Marvel Studios")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Grey"))
                }
                
                Spacer()
                
                
                VStack (alignment:.trailing ,spacing: 5){
                    HStack(spacing: 4){
                        ForEach(0...4 , id:\.self){ _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 16, height: 16)
                                .foregroundColor(Color("StarColor"))
                            
                           
                            
                        }
                    }
                    Text("From 342 users")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(Color("Grey"))
                }.padding(.top , 11)
            }.padding(.horizontal , 40)
                .padding(.top , 110)
        }
    }
}

struct NewRelaseView_Previews: PreviewProvider {
    static var previews: some View {
        NewRelaseView()
    }
}
