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
        VStack(alignment: .center) {
            Image(systemName: "square.and.arrow.down")
                .frame(width: 70, height: 70)
                .background(.white)
                .clipShape(Circle())
                
            
            VStack(spacing: 10) {
                TextField("Username", text: $nameText)
                TextField("Title", text: $titleText)
            }
            
            
            
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
        .frame(width: 370, height: 250)
        
        
    }
}

struct AddStatusView_Previews: PreviewProvider {
    static var previews: some View {
        AddStatusView()
    }
}
