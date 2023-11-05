//
//  LabelIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 27.10.2023.
//

import SwiftUI
import MapKit

class MapType: ObservableObject {
    @Published var mapType = MKMapType.standard
    @Published var showTraffic = false
    @Published var trackingMode = MKUserTrackingMode.none
}

struct LabelIconView: View {
    
    @State private var showsIcon: Bool  = false
    @EnvironmentObject var mapType: MapType
    @EnvironmentObject var showTraffic: MapType
    @State private var isHoveredStandardMapStyle: Bool  = false
    @State private var isHoveredSatelliteMapStyle: Bool  = false
    @State private var isHoveredDriveMapStyle: Bool  = false
    @State private var isPresented: Bool = false
    
    @EnvironmentObject var userTrackingMode: MapType
    let mapDelegate = MapViewCoordinator()
    
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 40) {
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .onTapGesture {
                    isPresented.toggle()
                }
                .sheet(isPresented: $isPresented) {
                    // MARK: - Adding User yourself
                    AddStatusView(isPresented: $isPresented)
                    
                    
                }
            Image(systemName: "heart.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
            Image(systemName: "square.stack.3d.up.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .onTapGesture {
                    withAnimation {
                        showsIcon.toggle()
                    }
                }
                .overlay(
                    ZStack {
                        if self.showsIcon {
                            HStack(spacing: 10) {
                                
                                // MARK: - Standard Map Style View
                                ZStack {
                                    Text("Standard")
                                        .position(x: 38, y: -12)
                                        .foregroundColor(isHoveredStandardMapStyle ? Color.white.opacity(0.7) : Color.white.opacity(0))
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(10)
                                    Image("standard")
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                        .scaledToFill()
                                        .cornerRadius(10)
                                }
                                .onHover { hovering in
                                    self.isHoveredStandardMapStyle = hovering
                                }
                                .onTapGesture {
                                    self.mapType.mapType = .standard
                                    self.mapType.showTraffic = false
                                }
                                
                                // MARK: - Satellite Map Style View
                                ZStack {
                                    Text("Satellite")
                                        .position(x: 38, y: -12)
                                        .foregroundColor(isHoveredSatelliteMapStyle ? Color.white.opacity(0.7) : Color.white.opacity(0))
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(10)
                                    Image("satellite")
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                        .scaledToFill()
                                        .cornerRadius(10)
                                }
                                .onHover { hovering in
                                    self.isHoveredSatelliteMapStyle = hovering
                                }
                                .onTapGesture {
                                    self.mapType.mapType = .satellite
                                    self.mapType.showTraffic = false
                                }
                                
                                // MARK: - Traffic Map Style View
                                ZStack {
                                    Text("Traffic")
                                        .position(x: 38, y: -12)
                                        .foregroundColor(isHoveredDriveMapStyle ? Color.white.opacity(0.7) : Color.white.opacity(0))
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(10)
                                    Image("drive")
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                        .scaledToFill()
                                        .cornerRadius(10)
                                }
                                .onHover { hovering in
                                    self.isHoveredDriveMapStyle = hovering
                                }
                                .onTapGesture {
                                    self.mapType.mapType = .standard
                                    self.mapType.showTraffic = true
                                }
                            }
                            .offset(x:-33, y: -80)
                        }
                    }
                )
            Image(systemName: "location.circle.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .onTapGesture {
                    mapType.trackingMode = .follow
                }
        }
    }
}

struct LabelIconView_Previews: PreviewProvider {
    static var previews: some View {
        LabelIconView()
    }
}
