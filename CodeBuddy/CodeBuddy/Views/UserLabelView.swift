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
                .frame(width: 235, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 55))
                .padding(.all, 4)
            
            HStack {
                
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
                
                
            }
            
            
        }
        
    }
}

struct UserLabelView_Previews: PreviewProvider {
    static var previews: some View {
        UserLabelView()
    }
}
