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
                .clipShape(RoundedRectangle(cornerRadius: 55))
                .padding(.all, 4)
            
            HStack() {
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 35, height: 35)
                    .padding(.leading, 15)
                VStack(alignment: .leading) {
                    HStack {
                        Text("Furkan Vural")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }
                    Text("iOS Developer")
                        .foregroundColor(.gray)
                        .font(.system(size: 11))
                }
                .padding(.leading, 4)
                ZStack {
                    
                    Rectangle()
                        .fill(Color.red.opacity(0.7))
                        .frame(width: 75, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding([.leading, .top], 10)
                    Text("Status")
                        .font(.system(size: 9))
                        .foregroundColor(.white.opacity(0.7))
                        .padding(.bottom, 30)
                        
                    
                    Text("Collaboration")
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .padding([.leading, .top], 11)
                    
                    
                        
                        
                }
                
                
                
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
 3- Deep Work
 */
