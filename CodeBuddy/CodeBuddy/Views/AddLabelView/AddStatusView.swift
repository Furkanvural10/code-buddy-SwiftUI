//
//  AddStatusView.swift
//  CodeBuddy
//
//  Created by furkan vural on 29.10.2023.
//

import SwiftUI

struct AddStatusView: View {
    @State private var isPresented: Bool = true
    @State private var isWorkingStatus: Bool = false
    @State private var isCollaborationStatus: Bool = false
    @State private var isBusyStatus: Bool = false
    @State private var onHoverForImage: Bool = false
    @State private var nameText: String = ""
    @State private var titleText: String = ""
    
    
    
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                ZStack {
                    Image(systemName: "square.and.arrow.down")
                        .font(.system(size: 20))
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(Circle())
                        .padding()
                        .onHover { hovering in
                            self.onHoverForImage = hovering
                        }
                    Text("Add your image")
                        .font(.system(size: 10))
                        .foregroundColor(onHoverForImage ? Color.gray : Color.white.opacity(0))
                        .offset(x: 0, y: -44)
                    
                }
                    
                VStack {
                    TextField("Username", text: $nameText)
                        
                    TextField("Backend Developer", text: $titleText)
                }
                .padding(.trailing, 10)
//                .padding(.leading, 1)
            }
            
            HStack {
                Text("Select Mood:")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.5))
                    
                HStack {
                    Toggle(isOn: $isWorkingStatus) {
                        Image(systemName: "keyboard.chevron.compact.left.fill")
                            .foregroundColor(isWorkingStatus ? Color.green : Color.gray)
                            .font(.system(size: 20))

                    }
                    Toggle(isOn: $isCollaborationStatus) {
                        Image(systemName: "cup.and.saucer.fill")
                            .foregroundColor(isCollaborationStatus ? Color.brown : Color.gray)
                            .font(.system(size: 20))
                    }
                    Toggle(isOn: $isBusyStatus) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(isBusyStatus ? Color.red : Color.gray)
                            .font(.system(size: 20))
                    }
                }
            }
            
            .padding(.trailing, 23)
            
//
//

            
        }
        .frame(width: 370, height: 200)
        
        
        
    }
}

struct AddStatusView_Previews: PreviewProvider {
    static var previews: some View {
        AddStatusView()
    }
}
