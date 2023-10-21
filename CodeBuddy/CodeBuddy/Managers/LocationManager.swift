//
//  LocationManager.swift
//  CodeBuddy
//
//  Created by furkan vural on 21.10.2023.
//

import Foundation
import CoreLocation
import MapKit

class LocationManager: NSObject, ObservableObject {
    
    private var locationManager = CLLocationManager()
    @Published var location: CLLocation?
    @Published var region: MKCoordinateRegion = MKCoordinateRegion()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 10.0
        locationManager.startUpdatingLocation()
        
    }
    
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        DispatchQueue.main.async { [weak self] in
            self?.location = location
            self?.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        }
    }
}
