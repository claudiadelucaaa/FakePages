//
//  DataText.swift
//  FakePages
//
//  Created by Claudia De Luca on 16/11/23.
//

import Foundation
import SwiftData

@Model
class DataText: Identifiable {
    var id: String
    var editedText: String
    var title: String = "Blank"
    let currentDate = Date()
    
    init(editedText: String, creationDate: Date = .now) {
        self.id = UUID().uuidString
        self.editedText = editedText
    }

}

