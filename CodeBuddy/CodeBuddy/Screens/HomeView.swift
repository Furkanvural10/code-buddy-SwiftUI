//
//  HomeView.swift
//  CodeBuddy
//
//  Created by furkan vural on 20.10.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            SideBarView()
                .frame(minWidth: 200)
            MapView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
