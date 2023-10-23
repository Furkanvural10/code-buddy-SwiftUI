//
//  UserLabelView.swift
//  CodeBuddy
//
//  Created by furkan vural on 21.10.2023.
//

/* To-Do List
 1- Do not forget add shadowing to view
 2- Add software language symbol
 3-
 */


import SwiftUI

struct UserLabelView: View {
    
    
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 245, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.all, 4)
            
            HStack() {
                UserImageView()
                TitleSubtitleView()
                
               StatusIconView()
                
                
                
            }
            
            
        }
        
    }
}

struct UserLabelView_Previews: PreviewProvider {
    static var previews: some View {
        UserLabelView()
    }
}


/*
 MARK: Status
 1- Collaboration (Work with Me)
 2- Networking
 3- Busy
 */
