//
//  UserListView.swift
//  CodeBuddy
//
//  Created by furkan vural on 21.10.2023.
//

import SwiftUI

struct UserListView: View {
    @State private var search: String = ""
    @State private var isFilterViewPresented = false

    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                // Arama kutusu
                TextField("Search People", text: $search)
                    .textFieldStyle(.roundedBorder)
                    .padding(.leading, 10)
                Spacer()
                Button(action: {
                    // Filtreleme butonuna tıklanınca yapılacak işlemler
                    isFilterViewPresented.toggle()
                }) {
                    Image(systemName: "list.bullet")
                        .font(.system(size: 20))
                        .padding(.trailing, 5)
                }
                .buttonStyle(.plain)
                .sheet(isPresented: $isFilterViewPresented) {
                    UserFilterView(isPresented: $isFilterViewPresented)
                        
                        

                }
            }

            List(1...20, id: \.self) { index in
                UserLabelView()
            }
        }
        .padding([.top, .bottom], 15)
            
        
        
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
