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
}

struct LabelIconView: View {
    
    @State private var showsIcon = false
    @EnvironmentObject var mapType: MapType
    @EnvironmentObject var showTraffic: MapType
    @State private var isHovered = false

    
    
    var body: some View {
        HStack(alignment: .center, spacing: 40) {
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
            Image(systemName: "star.fill")
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
                                
                                ZStack {
                                    Text("Standard")
                                        .position(x: 36, y: -12)
                                        .foregroundColor(isHovered ? Color.white.opacity(0.5) : Color.white.opacity(0))
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
                                    self.isHovered = hovering
                                    print(self.isHovered)
                                }
                                .onTapGesture {
                                    self.mapType.mapType = .standard
                                    self.mapType.showTraffic = false
                                }
                                
                                
                                
                                ZStack {
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
                                .onTapGesture {
                                    self.mapType.mapType = .satellite
                                    self.mapType.showTraffic = false
                                }
                                
                                ZStack {
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
        }
        
    }
}

struct LabelIconView_Previews: PreviewProvider {
    static var previews: some View {
        LabelIconView()
    }
}
