//
//  BussyIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 24.10.2023.
//

import SwiftUI

struct BussyIconView: View {
    
    @State private var isHovered = false
    
    var body: some View {
        Image(systemName: "minus.circle.fill")
            .foregroundColor(Color.red)
            .font(.system(size: 20))
            .onHover { hover in
                self.isHovered = hover
            }
            .overlay(isHovered ? Text("Bussy")
                .font(.system(size: 10))
                .frame(width: 60)
                .foregroundColor(Color.white)
                .padding(.bottom, 22) : nil, alignment: .bottom)
    }
}

struct BussyIconView_Previews: PreviewProvider {
    static var previews: some View {
        BussyIconView()
    }
}
