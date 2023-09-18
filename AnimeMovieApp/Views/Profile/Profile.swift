//
//  Profile.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 10.08.2023.
//

import SwiftUI

struct Profile: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundColor").ignoresSafeArea()
                VStack(alignment:.leading , spacing:5){
                    HStack{
                        //Image
                        Image("maria")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .background(.mint)
                            .clipShape(Circle())
                        // welcome&&name
                        VStack(alignment:.leading , spacing:5){
                            Text("Welcome back")
                                .font(.title3)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            
                            
                               Text("Maria")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                            
                        }
                        
                        //spacer
                        Spacer()
                        
                        //Menu Image
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 16)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }.padding(.horizontal)
                    
                    
                    Text("New relase")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    NewRelaseView()
                    
                    Text("Continue Watching.")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    HStack {
                        ScrollView(.horizontal , showsIndicators: false) {
                            HStack{
                                ContinueWatchingSingle(image: "14", movieName: "Grappler Baki", episoide: "T.1  Episode 4", lineWidth: CGFloat(134), xDirection: CGFloat(-11))
                                
                                ContinueWatchingSingle(image: "15", movieName: "Boku no Hero", episoide: "T.3  Episode 10", lineWidth: CGFloat(80), xDirection: CGFloat(-36))
                                
                                ContinueWatchingSingle(image: "16", movieName: "Hack", episoide: "T.1  Episode 3", lineWidth: CGFloat(40), xDirection: CGFloat(-55))
                            }
                        }
                    }.padding(.horizontal)
                    
                    HStack(spacing:22){
                        Text("· For you")
                            .font(.title3)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                        Text("New")
                            .font(.title3)
                            .foregroundColor(Color("Grey"))
                            .fontWeight(.regular)
                        
                        Text("Popular")
                            .font(.title3)
                            .foregroundColor(Color("Grey"))
                            .fontWeight(.regular)
                        
                        Text("Top 10")
                            .font(.title3)
                            .foregroundColor(Color("Grey"))
                            .fontWeight(.regular)
                        
                    }.padding()
                        .padding(.bottom , -8)

                    Scrollview()
                        .padding(.horizontal)
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigation) {
                         Image(systemName: "arrow.left")
                        .imageScale(.small)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.semibold)
                        .onTapGesture {
                            dismiss()
                        }
                        .offset(y:-15)
                      }
                  }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
