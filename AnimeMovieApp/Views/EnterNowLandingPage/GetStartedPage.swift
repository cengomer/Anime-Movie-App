//
//  GetStartedPage.swift
//  AnimeMovieApp
//
//  Created by omer elmas on 9.08.2023.
//

import SwiftUI

struct GetStartedPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                    Color("BackgroundColor").ignoresSafeArea()
                    
                    VStack {
                        VStack(spacing: -110){
                            SingleImageView(imageName: "EnterPageImage2")
                            SingleImageView(imageName: "EnterPageImage1")
                            SingleImageView(imageName: "EnterPageImage3")
                        }
                        
                        VStack(spacing:15){
                            Text("Onboarding")
                                .font(.system(size: 35 , weight: .bold))
                                .foregroundColor(.white)
                            
                            Text("Watch everything you want\nfor free!")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                            
                            NavigationLink {
                                HomePageView()
                                    .navigationBarBackButtonHidden()
                            } label: {
                                ButtonView(buttonText: "Enter now")
                                    .padding(.top)
                            }

                            
                                
                        }
                        
                    }.frame(maxHeight: .infinity, alignment: .top)
            }
        }
    }
}

struct GetStartedPage_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedPage()
    }
}
