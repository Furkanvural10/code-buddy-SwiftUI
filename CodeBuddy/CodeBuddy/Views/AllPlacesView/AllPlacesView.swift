//
//  AllPlacesView.swift
//  CodeBuddy
//
//  Created by furkan vural on 5.11.2023.
//

import SwiftUI

struct AllPlacesView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            HStack {
                ForEach(1...5, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 10))
                }
            }
            .offset(x: 10, y: -15)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Espressolab")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    Spacer()
                    Text("Added by:")
                        .foregroundColor(.white.opacity(0.3))
                        .font(.system(size: 10))
                        .padding(.trailing, 15)
                }
                
                .padding(.leading, 10)
                HStack {
                    Text("Sarıyer/İstanbul")
                        .foregroundColor(.gray)
                        .font(.system(size: 11))
                        .padding(.leading, 10)
                    Spacer()
                    Text("Ali Doğan")
                        .font(.system(size: 10))
                        .foregroundColor(.white.opacity(0.5))
                        .padding(.trailing, 16)
                }
            }
            .padding(.leading, 4)
        }
    }
}

struct AllPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        AllPlacesView()
    }
}
