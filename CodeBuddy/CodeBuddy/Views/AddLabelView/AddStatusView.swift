//
//  AddStatusView.swift
//  CodeBuddy
//
//  Created by furkan vural on 29.10.2023.
//

import SwiftUI

struct AddStatusView: View {
    @State private var isPresented: Bool = true
    @State private var isNetworkingStatus: Bool = false
    @State private var isCollaborationStatus: Bool = false
    @State private var isBusyStatus: Bool = false
    @State private var onHoverForImage: Bool = false
    @State private var onHoverForNetworkingStatus: Bool = false
    @State private var onHoverForBusyStatus: Bool = false
    
    @State private var onHoverForCollaborationStatus: Bool = false
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
            }
            
            HStack {
                Text("Select Mood:")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.5))
                
                HStack {
                    ZStack {
                        // MARK: - Collaboration Status
                        Text("Collaboration")
                            .scaledToFill()
                            .font(.system(size: 11))
                            .foregroundColor(onHoverForCollaborationStatus ? Color.gray : Color.white.opacity(0))
                            .offset(x: 0, y: -22)
//                        Toggle(isOn: $isCollaborationStatus) {
//                            Image(systemName: "keyboard.chevron.compact.left.fill")
//                                .foregroundColor(isCollaborationStatus ? Color.green : Color.gray)
//                                .font(.system(size: 20))
//                        }
                        Toggle("", isOn: $isCollaborationStatus)
                            .toggleStyle(MyCustomToggleStyle())
                    }
                    .onHover { hovering in
                        self.onHoverForCollaborationStatus = hovering
                    }
                    
                    
                        
                    
                    
                    
                    ZStack {
                        // MARK: - Networking Status
                        Text("Networking")
                            .scaledToFill()
                            .font(.system(size: 11))
                            .foregroundColor(onHoverForNetworkingStatus ? Color.gray : Color.white.opacity(0))
                            .offset(x: 0, y: -22)
                        Toggle(isOn: $isNetworkingStatus) {
                            Image(systemName: "cup.and.saucer.fill")
                                .foregroundColor(isNetworkingStatus ? Color.brown : Color.gray)
                                .font(.system(size: 20))
                                
                        }
                        
                    }
                    .onHover { hovering in
                        self.onHoverForNetworkingStatus = hovering
                    }
                    
                    // MARK: - Busy Status
                    ZStack {
                        Text("Busy")
                            .scaledToFill()
                            .font(.system(size: 11))
                            .foregroundColor(onHoverForBusyStatus ? Color.gray : Color.white.opacity(0))
                            .offset(x: 0, y: -22)
                        Toggle(isOn: $isBusyStatus) {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(isBusyStatus ? Color.red : Color.gray)
                                .font(.system(size: 20))
                        }
                        .onTapGesture {
                            print("Tıklandı Busy")
                            isNetworkingStatus = false
                            isCollaborationStatus = false
                        }
                    }
                    .onHover { hovering in
                        self.onHoverForBusyStatus = hovering
                    }
                }
            }
            .padding([.trailing, .leading], 23)
            Divider()
                .background(.white.opacity(0))
            HStack(spacing: 10) {
                Button("Cancel") {
                    
                }
                .buttonStyle(.plain)
                Button("Save") {
                    
                }
    //            .foregroundColor() -> Check user choose status and textfield fill if not color is not blue!!
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
        
            
        }
        .frame(width: 400, height: 220)
 
    }
}

struct AddStatusView_Previews: PreviewProvider {
    static var previews: some View {
        AddStatusView()
    }
}


struct MyCustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
            HStack {
                configuration.label
                Spacer()
                Rectangle()
                    .foregroundColor(configuration.isOn ? .green : .gray)
                    .frame(width: 51, height: 31, alignment: .center)
                    .overlay(
                        Circle()
                            .foregroundColor(.white)
                            .padding(.all, 3)
                            .overlay(
                                Image(systemName: configuration.isOn ? "checkmark" : "xmark")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .font(Font.title.weight(.black))
                                    .frame(width: 8, height: 8, alignment: .center)
                                    .foregroundColor(configuration.isOn ? .green : .gray)
                            )
                            .offset(x: configuration.isOn ? 11 : -11, y: 0)
                            .animation(Animation.linear(duration: 0.1))
                            
                    ).cornerRadius(20)
                    .onTapGesture { configuration.isOn.toggle() }
            }
        }
}
