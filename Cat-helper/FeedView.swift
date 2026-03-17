//
//  FeedView.swift
//  Cat-helper
//
//  Created by Wu Liyu on 17.03.26.
//

import Foundation
import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            Text("Time to eat!")
                .font(.title)
            
            
            List {
                Text("Canned Food - 8:00 AM")
                Text("Dry Food - 12:00 PM")
                Text("Treats - 6:00 PM")
            }
        }
        .navigationTitle("Feed My Cat")
    }
}

#Preview {
    FeedView()
}
