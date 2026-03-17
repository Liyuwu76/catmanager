//
//  SearchView.swift
//  Cat-helper
//
//  Created by Wu Liyu on 17.03.26.
//

import SwiftUI
import MapKit

struct SearchView: View{
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.0707, longitude: 15.4395),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    var body: some View {
        VStack {

            Text("Here is your cat:")
            Map(coordinateRegion: $region)
                .cornerRadius(20)
                .padding()
                .shadow(radius: 5)
        }.frame(height:300)
    }
}

#Preview {
    SearchView()
}
