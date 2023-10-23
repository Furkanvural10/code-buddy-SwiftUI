//
//  UserListView.swift
//  CodeBuddy
//
//  Created by furkan vural on 21.10.2023.
//

import SwiftUI

struct UserListView: View {
    @State private var search: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            List(1...20, id: \.self) { index in
                UserLabelView()
            }
        }.searchable(text: $search, placement: .sidebar, prompt: "Search People")
            .padding([.top, .bottom,], 15)
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
