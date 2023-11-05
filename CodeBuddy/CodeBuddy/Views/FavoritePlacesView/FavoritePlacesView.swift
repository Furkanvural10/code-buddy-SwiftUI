//
//  FavoritePlacesView.swift
//  CodeBuddy
//
//  Created by furkan vural on 5.11.2023.
//

import SwiftUI

struct FavoritePlacesView: View {
    
    @State private var isSelectedFavoritePlaces: Bool = true
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Harvard Caffee")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                Spacer()
                Image(systemName: isSelectedFavoritePlaces ? "heart.fill" : "heart")
                    .padding(.trailing, 14)
                    .foregroundColor( isSelectedFavoritePlaces ? .red : .white)
                    .onTapGesture {
                        isSelectedFavoritePlaces.toggle()
                    }
            }
            .padding(.leading, 10)
            Text("Etiler/İstanbul")
                .foregroundColor(.gray)
                .font(.system(size: 11))
                .padding(.leading, 10)
        }
        .padding(.leading, 4)
    }
}

struct FavoritePlacesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePlacesView()
    }
}
