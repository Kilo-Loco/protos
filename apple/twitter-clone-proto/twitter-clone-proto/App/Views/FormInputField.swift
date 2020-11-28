//
//  FormInputField.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/19/20.
//

import SwiftUI

struct FormInputField: View {
    
    let placeholder: String
    let text: Binding<String>
    let isSecureEntryEnabled: Bool
    
    init(placeholder: String, text: Binding<String>, isSecureEntryEnabled: Bool = false) {
        self.placeholder = placeholder
        self.text = text
        self.isSecureEntryEnabled = isSecureEntryEnabled
    }
    
    var body: some View {
        VStack {
            if isSecureEntryEnabled {
                SecureField(placeholder, text: text)
            } else {
                TextField(placeholder, text: text)                
            }
            Divider()
        }
    }
}
