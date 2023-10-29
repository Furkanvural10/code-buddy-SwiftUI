//
//  AddLabelView.swift
//  CodeBuddy
//
//  Created by furkan vural on 27.10.2023.
//

import SwiftUI
import MapKit

struct AddLabelView: View {
    
    var body: some View {
        Rectangle()
            .fill(Color.black.opacity(0.4))
            .frame(width: 300, height: 70)
            .cornerRadius(10)
            .overlay(
                LabelIconView()
            )
            .padding(.bottom, 25)
    }
}

struct AddLabelView_Previews: PreviewProvider {
    static var previews: some View {
        AddLabelView()
    }
}
