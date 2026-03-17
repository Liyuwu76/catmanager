//
//  ContentView.swift
//  Cat-helper
//
//  Created by Wu Liyu on 17.03.26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack { // REQ 4: Navigation Container
            VStack(spacing: 40) {
                // REQ 1: UI - Header Text
                Text("Welcome to Cat-Manager")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)

                Image(systemName: "cat.fill") // REQ 1: Icon
                    .font(.system(size: 80))
                    .foregroundColor(.orange)

                VStack(spacing: 20) {
                    // REQ 4: Link to SearchView
                    NavigationLink(destination: SearchView()) {
                        Text("Find my cat")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 40)
                    
                    // REQ 4: Link to FeedView
                    NavigationLink(destination: FeedView()) {
                        Text("Feed my cat")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 40)
                    

                    
                    Spacer()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
