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
    
    @State private var selectedSegment = 0
    let segments = ["Favorite", "General",]
    
    
    @State private var showsIcon: Bool  = false
    @State private var showsBestPlace: Bool  = false
    
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
                    showsBestPlace = false
                    showsIcon = false
                    isPresented.toggle()
                }
                .sheet(isPresented: $isPresented) {
                    AddStatusView(isPresented: $isPresented)
                }
            
            // MARK: - Show Best Places
            Image(systemName: "heart.fill")
                .font(.system(size: 24))
                .foregroundColor( showsBestPlace ? .red : .white)
                .onTapGesture {
                    withAnimation {
                        showsBestPlace.toggle()
                        showsIcon = false
                    }
                }
                .overlay(
                    VStack(alignment: .center) {
                        if self.showsBestPlace {
                            List {
                                HStack {
                                    Picker("", selection: $selectedSegment) {
                                        ForEach(0..<segments.count, id: \.self) { index in
                                            Text(segments[index])
                                        }
                                    }.pickerStyle(SegmentedPickerStyle())
                                    
                                }
                                ForEach(1...10, id: \.self) { _ in
                                    ZStack(alignment: .leading) {
                                        
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.09))
                                            .frame(width: 220, height: 50)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .padding(.all, 4)
                                        
                                        HStack() {
                                            FavoritePlacesView()
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                    }
                        .cornerRadius(5)
                        .frame(width: 280, height: 485)
                        .offset(x:33, y: -290)
                )
                
            
            // MARK: - Show Map Style
            Image(systemName: "square.stack.3d.up.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .onTapGesture {
                    withAnimation {
                        showsBestPlace = false
                        isPresented = false
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
