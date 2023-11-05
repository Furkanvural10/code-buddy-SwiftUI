//
//  FavoritePlacesView.swift
//  CodeBuddy
//
//  Created by furkan vural on 5.11.2023.
//

import SwiftUI

struct FavoritePlacesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Harvard Caffee")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                Spacer()
                Image(systemName: "heart.fill")
                    .padding(.trailing, 14)
                    .foregroundColor(.red)
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
