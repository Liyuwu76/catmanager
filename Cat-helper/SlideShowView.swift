//
//  SlideShowView.swift
//
//  Created by Feiner Johannes on 17.03.26.
//  Modified by Liyu Wu on 24.03.26.
//

import SwiftUI

struct SlideShowView: View {
    
    @State
    var showHelp:Bool = false
    
    @AppStorage("lastSlideSeen") var lastSlide = 7
    @AppStorage("user") var userName = "admin"
    
    let mgmt = SlideMgmt.sharedInstance
    
    var body: some View {
        VStack{
            Text("Slideshow")
            TextField("User",text: $userName)
                .padding(.all)
            NavigationStack{
                List(){
                    ForEach(mgmt.slides){ slide in
                        NavigationLink{
                            Text(slide.title)
                            Image(slide.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } label: {
                            Text(slide.title)
                        }
                        
                    }
                }
            }            
        }.sheet(isPresented: $showHelp){
            Text("Some Help info")
        }
    }
}

#Preview {
    SlideShowView()
}
