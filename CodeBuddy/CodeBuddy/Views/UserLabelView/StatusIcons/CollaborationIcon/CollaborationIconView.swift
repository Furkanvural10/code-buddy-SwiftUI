//
//  CollaborationIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 24.10.2023.
//

import SwiftUI

struct CollaborationIconView: View {
    var body: some View {
        Image(systemName: "keyboard.chevron.compact.left.fill")
                    .foregroundColor(Color.green)
            .font(.system(size: 8))
    }
}

struct CollaborationIconView_Previews: PreviewProvider {
    static var previews: some View {
        CollaborationIconView()
    }
}
