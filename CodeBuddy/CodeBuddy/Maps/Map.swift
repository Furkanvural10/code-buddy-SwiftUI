//
//  Map.swift
//  CodeBuddy
//
//  Created by furkan vural on 20.10.2023.
//

import Foundation
import MapKit
import SwiftUI

struct Map: NSViewRepresentable {
    typealias NSViewType = MKMapView
    
    @EnvironmentObject var mapType: MapType

    func makeNSView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        map.mapType = .standard
        return map
    }
    
    func updateNSView(_ nsView: MKMapView, context: Context) {
        nsView.mapType = mapType.mapType
        nsView.showsTraffic = mapType.showTraffic
    }
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator()
    }
    
    
}
