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
                            HStack {
                                Image("standard")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .scaledToFill()
                                
                                Image("satellite")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .scaledToFill()
                                    
                                Image("drive")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .scaledToFill()
                                    
                                
                                    
                            }
                            .offset(x:-6, y: -70)
                            
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
