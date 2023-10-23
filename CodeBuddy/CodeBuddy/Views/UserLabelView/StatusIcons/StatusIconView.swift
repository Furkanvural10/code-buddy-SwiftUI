//
//  StatusIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 23.10.2023.
//

import SwiftUI

struct StatusIconView: View {
    
    var body: some View {
        HStack {
            CollaborationIconView()
            NetworkingIconView()
            BussyIconView()
        }
        .padding(.leading, 5)
    }
}

struct StatusIconView_Previews: PreviewProvider {
    static var previews: some View {
        StatusIconView()
    }
}
