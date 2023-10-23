//
//  StatusIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 23.10.2023.
//

import SwiftUI

struct StatusIconView: View {
    
    @State private var isHovered = false
    
    var body: some View {
        HStack {
            Image(systemName: "keyboard.chevron.compact.left.fill")
//                        .foregroundColor(Color.green)
                .font(.system(size: 8))
            Image(systemName: "cup.and.saucer.fill")
//                        .foregroundColor(Color.brown)
                .font(.system(size: 8))
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
//                            .background(Color.gray)
                    .padding(.bottom, 22) : nil, alignment: .bottom)
        }
        .padding(.leading, 5)
    }
}

struct StatusIconView_Previews: PreviewProvider {
    static var previews: some View {
        StatusIconView()
    }
}
