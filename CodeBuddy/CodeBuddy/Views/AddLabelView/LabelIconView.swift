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
                    //                                self.selectedMapType = .hybridFlyover
                    withAnimation {
                        showsIcon.toggle()
                    }
                }
                .overlay(
                    ZStack {
                        if self.showsIcon {
                            HStack {
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 50, height: 50)
                                Rectangle()
                                    .fill(.blue)
                                    .frame(width: 50, height: 50)
                                Rectangle()
                                    .fill(.green)
                                    .frame(width: 50, height: 50)
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
