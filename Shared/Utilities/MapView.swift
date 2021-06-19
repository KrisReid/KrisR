//
//  MapView.swift
//  KrisR
//
//  Created by Kris Reid on 18/06/2021.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    let destination: Destination
    @State var region: MKCoordinateRegion
    @State var isShowingAttractions = false
    
    init(destination: Destination) {
        self.destination = destination
        self._region = State(initialValue: MKCoordinateRegion(center: .init(latitude: 51.804543, longitude: -0.207233), span: .init(latitudeDelta: 0.1, longitudeDelta: 0.1)))
    }
    
    let pointsOfInterests: [PointsOfInterest] = [
        .init(name: "Home", latitude: 51.804543, longitude: -0.207233)
    ]
    
    var body: some View {
        
        VStack {
            Map(coordinateRegion: $region, annotationItems: pointsOfInterests) {
                pointsOfInterest in
                MapMarker(coordinate: .init(latitude: pointsOfInterest.latitude, longitude: pointsOfInterest.longitude))
            }
        }
        .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(destination: .init(city: "Welwyn", latitude: 51.804543, longitude: -0.207233))
    }
}
