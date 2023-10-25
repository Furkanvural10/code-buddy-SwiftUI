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
//            .foregroundColor(.gray.opacity(0.3))
            .foregroundColor(Color.brown)
            .font(.system(size: 9))
    }
}

struct NetworkingIconView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkingIconView()
    }
}
