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
    
    @State private var isHovered = false
    
    
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
                
                HStack {
                    Image(systemName: "keyboard.chevron.compact.left.fill")
//                        .foregroundColor(Color.green)
                        .font(.system(size: 8))
                    Image(systemName: "cup.and.saucer.fill")
//                        .foregroundColor(Color.brown)
                        .font(.system(size: 8))
                    Image(systemName: "minus.circle.fill")
                        .foregroundColor(Color.red)
                        .font(.system(size: 20))
                        .onHover { hover in
                            self.isHovered = hover
                        }
                        .overlay(isHovered ? Text("Bussy")
                            .font(.system(size: 10))
                            .frame(width: 60)
                            .foregroundColor(Color.white)
//                            .background(Color.gray)
                            .padding(.bottom, 22) : nil, alignment: .bottom)
                }
                .padding(.leading, 5)
                
                
                
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
