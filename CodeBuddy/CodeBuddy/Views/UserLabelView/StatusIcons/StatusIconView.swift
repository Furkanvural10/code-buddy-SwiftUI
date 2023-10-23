//
//  StatusIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 23.10.2023.
//

import SwiftUI

class Settings: ObservableObject {
    
    @Published var isActive: Bool = false
}

struct StatusIconView: View {
    
    @EnvironmentObject var value: Settings
    
    var body: some View {
        HStack {
            CollaborationIconView()
            NetworkingIconView()
            BusyIconView()
        }
        .padding(.leading, 10)
    }
}

struct StatusIconView_Previews: PreviewProvider {
    static var previews: some View {
        StatusIconView()
    }
}
