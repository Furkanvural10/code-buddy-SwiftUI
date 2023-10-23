//
//  TitleSubtitleView.swift
//  CodeBuddy
//
//  Created by furkan vural on 23.10.2023.
//

import SwiftUI

struct TitleSubtitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Furkan Vural")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
            }
            Text("iOS Developer")
                .foregroundColor(.gray)
                .font(.system(size: 11))
        }
        .padding(.leading, 4)
    }
}

struct TitleSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleSubtitleView()
    }
}
