//
//  Extensions.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//

import SwiftUI


extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

extension String
{
    var isAllEmpty: Bool {
        return trim().isEmpty
    }
    
    func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}"
        let emailTest  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    var isStrongPassword: Bool {
        let passwordFormat = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*[@#$%^&+=?.!_])(?=.*?[0-9]).{8,30}$"
        let passwordPredicate = NSPredicate(format:"SELF MATCHES %@", passwordFormat)
        return passwordPredicate.evaluate(with: self)
    }
}
