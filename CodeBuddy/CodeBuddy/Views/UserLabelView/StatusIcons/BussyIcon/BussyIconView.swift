//
//  BussyIconView.swift
//  CodeBuddy
//
//  Created by furkan vural on 24.10.2023.
//

import SwiftUI

struct BusyIconView: View {
    
    @State private var isHovered = false
    @State private var statusIsOn = false
    
    var body: some View {
        
        // According to selected status make bigger status and change color icon
        
        Image(systemName: "minus.circle.fill")
            .foregroundColor(Color.red.opacity(0.4))
            .font(.system(size: 20))
            .padding(.trailing, 2)
           
    }
}

struct BusyIconView_Previews: PreviewProvider {
    static var previews: some View {
        BusyIconView()
    }
}
