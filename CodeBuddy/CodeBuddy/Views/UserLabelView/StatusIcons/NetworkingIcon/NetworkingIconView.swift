//
//  NetworkingIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 24.10.2023.
//

import SwiftUI

struct NetworkingIconView: View {
    var body: some View {
        Image(systemName: "cup.and.saucer.fill")
                    .foregroundColor(Color.brown)
            .font(.system(size: 8))
    }
}

struct NetworkingIconView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkingIconView()
    }
}
