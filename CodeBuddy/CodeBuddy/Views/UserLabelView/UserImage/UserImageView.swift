//
//  UserImageView.swift
//  CodeBuddy
//
//  Created by furkan vural on 23.10.2023.
//

import SwiftUI

struct UserImageView: View {
    var body: some View {
        Image("profileImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 35, height: 35)
            
            .clipShape(Circle())
            .padding(.leading, 15)
        
        
    }
    
        
}

struct UserImageView_Previews: PreviewProvider {
    static var previews: some View {
        UserImageView()
    }
}
