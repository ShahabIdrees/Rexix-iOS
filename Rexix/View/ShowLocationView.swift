//
//  ShowLocationView.swift
//  Rexix
//
//  Created by Apple on 15/12/2023.
//

import SwiftUI
import MapKit

struct LocationItem: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct ShowLocationView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334606, longitude: -122.009102), span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008))
    @State private var coordinates = [LocationItem(coordinate: CLLocationCoordinate2D(latitude: 37.334606, longitude: -122.009102))]

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: false, userTrackingMode: .constant(.follow), annotationItems: coordinates) { location in
            MapMarker(coordinate: location.coordinate, tint: .red)
        }
        .ignoresSafeArea(.all)
    }
}

struct ShowLocationView_Previews: PreviewProvider {
    static var previews: some View {
        ShowLocationView()
    }
}


