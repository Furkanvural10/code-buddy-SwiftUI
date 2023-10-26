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
    @Binding var mapType: MKMapType

    func makeNSView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        map.mapType = mapType
        return map
    }
    
    func updateNSView(_ nsView: MKMapView, context: Context) {
        nsView.mapType = mapType
    }
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator()
    }
    
    
}
