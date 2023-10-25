//
//  UserFilterView.swift
//  CodeBuddy
//
//  Created by furkan vural on 25.10.2023.
//

import SwiftUI

struct UserFilterView: View {
    
    @State private var isOn: Bool = false
    @Binding var isPresented: Bool
    
    @State private var swiftIsOn: Bool = false
    @State private var statusIsOn: Bool = false
    
    
    private let list = ProgramingLanguage.shared.languageList
    private let statusList = UserStatus.shared.statusList
    
    
    var body: some View {
        List {
            VStack(alignment: .leading, spacing: 15) {
                Text("Language")
                    .font(.largeTitle)
                    .bold()
                    .padding([.leading, .top], 5)
                Divider()
                
                HStack {
                    ForEach(list.prefix(list.count / 2), id: \.self) { language in
                        Toggle(language, isOn: $swiftIsOn)
                    }
                    .padding(.leading, 5)
                }
                HStack {
                    ForEach(list.suffix(list.count / 2), id: \.self) { language in
                        Toggle(language, isOn: $swiftIsOn)
                    }
                    .padding([.leading, .top], 5)
                    
                }
            }
            Divider()
                .foregroundColor(Color.black.opacity(0))
            VStack(alignment: .leading, spacing: 10) {
                Text("Status")
                    .font(.largeTitle)
                    .bold()
                    .padding([.leading, .top], 5)
                Divider()
                
                HStack {
                    ForEach(statusList, id: \.self) { status in
                        Toggle(status, isOn: $statusIsOn)
                        
                    }
                }
            }
            
            
        }.frame(width: 550, height: 340)
    }
}

//struct UserFilterView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserFilterView()
//    }
//}
