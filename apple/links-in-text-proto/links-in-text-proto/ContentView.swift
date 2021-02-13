//
//  ContentView.swift
//  links-in-text-proto
//
//  Created by Kilo Loco on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct AttributedText: View {
    let text: String
    
    let didTapLink: (String) -> Void
    
    func getAttributtedString() -> some View {
        let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            
            let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
            
            var newText = Text("")
            var cursor = text.startIndex
            
            for match in matches {
                let linkTextStartIndex = String.Index(utf16Offset: match.range.lowerBound, in: text)
                
                let regularText = text[cursor ..< linkTextStartIndex]
                newText = newText + Text(regularText)
                
                let linkText = String(text[Range(match.range, in: text)!])
                let hyperlink = Text(linkText)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        didTapLink(linkText)
                    }
                newText = newText + (hyperlink as! Text)
                
            }
        
        } catch {
            print(error)
        }
        
        return Text(text)
    }
    
    var body: some View {
        Text(text)
    }
}

extension AttributedText {
    struct DetectorType: OptionSet {
        
        let rawValue: Int
        
        static let url          = DetectorType(rawValue: 1 << 0)
        static let phoneNumber  = DetectorType(rawValue: 1 << 1)
        static let hashtag      = DetectorType(rawValue: 1 << 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
