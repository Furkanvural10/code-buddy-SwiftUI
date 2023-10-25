//
//  ProgrammingLanguage.swift
//  CodeBuddy
//
//  Created by furkan vural on 25.10.2023.
//

import Foundation

struct ProgramingLanguage {
    
    static let shared = ProgramingLanguage()
       
       private init() {}
    
    let languageList = [
        "C#",
        "C++",
        "Java",
        "Python",
        "JavaScript",
        "Swift",
        "Kotlin",
        "PHP",
        "Go",
        "Rust",
        "TypeScript",
        "Objective-C",
        "Dart",
        "Other"
    ]
}
