//
//  VerificationCodeView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import SwiftUI

struct Expand<Content: View>: View {
    
    let content: () -> Content
    
    var body: some View {
        content()
    }
}

extension Array {
    public subscript(index: Int, default defaultValue: @autoclosure () -> Element) -> Element {
        guard index >= 0, index < endIndex else {
            return defaultValue()
        }

        return self[index]
    }
}

@propertyWrapper
public struct LengthLimited {
    private var value: String!
    private let maxLength: Int
    
    public var wrappedValue: String {
        get { value }
        set { value = String(newValue.prefix(maxLength)) }
    }
    
    public init(wrappedValue: String, maxLength: Int = 100) {
        self.maxLength = maxLength
        self.wrappedValue = wrappedValue
    }
}

struct OneTimeCodeField: View {
    
    var text: Binding<String> = .constant("123456789")
    
    let placeholder = "*"
    
    var textComponents: [String] {
        Array(0 ..< codeLength).map { index in
            text.wrappedValue.map({ String($0) })[index, default: placeholder]
        }
    }
    
    
    let codeLength = 6
    let height: CGFloat = 50
    
    var body: some View {
        ZStack(alignment: .center) {
            HStack {
                ForEach(textComponents, id: \.self) { text in
                    VStack(spacing: 0) {
                        Text(text)
                            .font(.largeTitle)
                        Rectangle()
                            .fill(Color.red)
                            .frame(maxHeight: 3)

                    }
                }
            }

            TextField("", text: .constant(""))
                .frame(maxHeight: .infinity)
                
        }
        .frame(maxHeight: height)
    }
}

//struct OneTimeCodeField_Previews: PreviewProvider {
//    static var previews: some View {
//        OneTimeCodeField()
//    }
//}

struct VerificationCodeView: View {
    
    let email: String
    
    var body: some View {
        VStack {
            Spacer()
        
            Text("We sent you a code")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            Text("Enter it below to verify \(email)")
                .padding(.bottom, 40)
            
            FormInputField(placeholder: "Verification code", text: .constant(""))
                .padding(.horizontal, 40)
            
            Spacer()
            
            Button(action: {}) {
                Text("Next")
                    .fontWeight(.semibold)
            }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .padding(.horizontal, 40)
            
        }
    }
}

struct VerificationCodeView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationCodeView(email: "kyle@kiloloco.com")
    }
}
