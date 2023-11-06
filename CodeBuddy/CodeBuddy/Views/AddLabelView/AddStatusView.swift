//
//  AddStatusView.swift
//  CodeBuddy
//
//  Created by furkan vural on 29.10.2023.
//

import SwiftUI

struct AddStatusView: View {
    @Binding var isPresented: Bool
    @State private var isNetworkingStatus: Bool = false
    @State private var isCollaborationStatus: Bool = false
    @State private var isBusyStatus: Bool = false
    @State private var onHoverForImage: Bool = false
    @State private var onHoverForNetworkingStatus: Bool = false
    @State private var onHoverForBusyStatus: Bool = false
    @State private var nameTextFieldFill: Bool = false
    
    @State private var onHoverForCollaborationStatus: Bool = false
    @State private var nameText: String = ""
    @State private var titleText: String = ""
    
    // MARK: - Image
    @State private var selectedImage: NSImage?
    @State private var isImagePickerPresented = false
    
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Spacer()
            HStack {
                if let image = selectedImage {
                    ZStack {
                        
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFill()
                            .font(.system(size: 20))
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding()
                            .onHover { hovering in
                                self.onHoverForImage = hovering
                            }
                        Text("Change your image")
                            .font(.system(size: 10))
                            .foregroundColor(onHoverForImage ? Color.gray : Color.white.opacity(0))
                            .offset(x: 5, y: 40)
                    }
                    .onTapGesture {
                        openImagePicker()
                    }
                } else {
                    ZStack {
                        Image(systemName: "square.and.arrow.down")
                            .font(.system(size: 20))
                            .frame(width: 60, height: 60)
                            .background(.gray)
                            .clipShape(Circle())
                            .padding()
                            .onHover { hovering in
                                self.onHoverForImage = hovering
                            }
                        Text("Add your image")
                            .font(.system(size: 10))
                            .foregroundColor(onHoverForImage ? Color.gray : Color.white.opacity(0))
                            .offset(x: 0, y: 40)
                    }
                    .onTapGesture {
                        openImagePicker()
                    }
                }
                
                VStack {
                    TextField("Username", text: $nameText)
                        .onChange(of: nameText) { newValue in
                            if newValue.count < 3 {
                                nameTextFieldFill = false
                            } else {
                                if titleText.count > 3 {
                                    nameTextFieldFill = true
                                } else {
                                    nameTextFieldFill = false
                                }
                            }
                        }
                    
                    TextField("eg: Backend Developer", text: $titleText)
                        .onChange(of: titleText) { newValue in
                            if nameText.count > 3 {
                                if newValue.count > 3 {
                                    nameTextFieldFill = true
                                } else {
                                    nameTextFieldFill = false
                                }
                            } else {
                                nameTextFieldFill = false
                            }
                        }
                }
                .padding(.trailing, 10)
            }
            Divider()
                .background(.white.opacity(0))
            Text("Select your status: ")
                .font(.system(size: 12))
                .foregroundColor(.white.opacity(0.6))
            HStack {
                
                ZStack {
                    // MARK: - Collaboration Status
                    Text("Collaboration")
                        .scaledToFill()
                        .font(.system(size: 11))
                        .foregroundColor(onHoverForCollaborationStatus ? Color.gray : Color.white.opacity(0))
                        .offset(x: 0, y: 32)
                    
                    Toggle("", isOn: $isCollaborationStatus)
                        .toggleStyle(MyCollaborationCustomToggleStyle())
                        .onChange(of: isCollaborationStatus) { newValue in
                            if newValue {
                                isNetworkingStatus = false
                                isBusyStatus = false
                            }
                        }
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
                        .offset(x: 0, y: 32)
                    Toggle("", isOn: $isNetworkingStatus)
                        .toggleStyle(MyNetworkingCustomToggleStyle())
                        .onChange(of: isNetworkingStatus) { newValue in
                            if newValue {
                                isCollaborationStatus = false
                                isBusyStatus = false
                            }
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
                        .offset(x: 0, y: 32)
                    Toggle("", isOn: $isBusyStatus)
                        .toggleStyle(MyBusyCustomToggleStyle())
                        .onChange(of: isBusyStatus) { newValue in
                            if newValue {
                                isCollaborationStatus = false
                                isNetworkingStatus = false
                            }
                        }
                }
                .onHover { hovering in
                    self.onHoverForBusyStatus = hovering
                }
                
            }
            .padding([.trailing, .leading], 23)
            Divider()
                .background(.white.opacity(0))
                .padding(.top, 10)
            HStack(spacing: 10) {
                Button("Cancel") {
                    print("Cancel islemi")
                    isPresented.toggle()
                }
                .buttonStyle(.borderless)
                ZStack(alignment: .center) {
                    Capsule()
                        .fill(nameTextFieldFill ? .blue : .gray.opacity(0))
                        .frame(width: 60, height: 20)
                    Text("Save")
                        .foregroundColor(nameTextFieldFill ? .white : .gray.opacity(0.5))
                }
                .onTapGesture {
                    print("Save islemi basarılı")
                }
            }
            .padding()
            Spacer()
            Spacer()
            
            
        }
        .frame(width: 470, height: 250)
        
        
        
    }
    func openImagePicker() {
        let openPanel = NSOpenPanel()
        openPanel.allowedFileTypes = ["jpg", "jpeg", "png"]
//        openPanel.allowedContentTypes = [.png, .jpeg]
        openPanel.allowsMultipleSelection = false
        
        openPanel.begin { response in
            if response == .OK, let url = openPanel.url, let image = NSImage(contentsOf: url) {
                selectedImage = image
            }
        }
    }
}

//struct AddStatusView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddStatusView()
//    }
//}


struct MyNetworkingCustomToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label.font(.system(size: 12)).foregroundColor(Color.gray)
            Rectangle()
                .foregroundColor(configuration.isOn ? .brown : .gray)
                .frame(width: 54, height: 30, alignment: .center)
                .overlay(
                    Circle()
                        .foregroundColor(configuration.isOn ? .white : .white)
                        .padding(.all, 3)
                        .overlay(
                            Image(systemName: configuration.isOn ? "cup.and.saucer.fill" : "cup.and.saucer.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .font(Font.title.weight(.light))
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(configuration.isOn ? .brown : .gray)
                        )
                        .offset(x: configuration.isOn ? 11 : -11, y: 0)
                        .animation(Animation.linear(duration: 0.1))
                ).cornerRadius(20)
                .onTapGesture {
                    configuration.isOn.toggle()
                    
                }
        }
    }
}

struct MyCollaborationCustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label.font(.system(size: 12)).foregroundColor(Color.gray)
            Rectangle()
                .foregroundColor(configuration.isOn ? .green : .gray)
                .frame(width: 54, height: 30, alignment: .center)
                .overlay(
                    Circle()
                        .foregroundColor(configuration.isOn ? .white : .white)
                        .padding(.all, 3)
                        .overlay(
                            Image(systemName: configuration.isOn ? "keyboard.fill" : "keyboard.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .font(Font.title.weight(.light))
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(configuration.isOn ? .green : .gray)
                        )
                        .offset(x: configuration.isOn ? 11 : -11, y: 0)
                        .animation(Animation.linear(duration: 0.1))
                    
                ).cornerRadius(20)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}

struct MyBusyCustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label.font(.system(size: 12)).foregroundColor(Color.gray)
            Rectangle()
                .foregroundColor(configuration.isOn ? .red : .gray)
                .frame(width: 54, height: 30, alignment: .center)
                .overlay(
                    Circle()
                        .foregroundColor(configuration.isOn ? .red : .gray)
                        .padding(.all, 3)
                        .overlay(
                            Image(systemName: configuration.isOn ? "minus.circle" : "minus.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .font(Font.title.weight(.light))
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(configuration.isOn ? .black.opacity(0.8) : .white)
                        )
                        .offset(x: configuration.isOn ? 11 : -11, y: 0)
                        .animation(Animation.linear(duration: 0.1))
                    
                ).cornerRadius(20)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}

