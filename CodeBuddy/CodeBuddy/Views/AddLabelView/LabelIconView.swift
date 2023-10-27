//
//  LabelIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 27.10.2023.
//

import SwiftUI

struct LabelIconView: View {
    
    @State private var showsIcon = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 40) {
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 24))
                .foregroundColor(.green)
            Image(systemName: "star.fill")
                .font(.system(size: 24))
                .foregroundColor(.yellow)
            Image(systemName: "square.stack.3d.up.fill")
                .font(.system(size: 24))
                .foregroundColor(.orange)
                .onTapGesture {
//                    self.selectedMapType = .satelliteFlyover
                    withAnimation {
                        showsIcon.toggle()
                    }
                }
                .overlay(
                    ZStack {
                        if self.showsIcon {
                            
                                
                            HStack(spacing: 10) {
                                ZStack {
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
