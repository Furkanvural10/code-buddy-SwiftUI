//
//  UserStatus.swift
//  CodeBuddy
//
//  Created by furkan vural on 25.10.2023.
//

import Foundation

struct UserStatus {
    
    static let shared = UserStatus()
    
    private init() {}
    
    let statusList = ["Collaboration", "Networking", "Busy"]
}
