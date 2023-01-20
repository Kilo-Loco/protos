//
//  WelcomeView.swift
//  pretty-auth-proto
//
//  Created by Kilo Loco on 1/19/23.
//

import SwiftUI

extension Color {
    static var secondaryAccentColor: Color {
        Color("SecondaryAccentColor")
    }
}

struct ThemeButtonStyle: ButtonStyle {
    let accentType: AccentType
    
    func makeBody(configuration: Configuration) -> some View {
        let color: Color
        switch accentType {
        case .primary:
            color = configuration.isPressed
                ? Color.accentColor.opacity(0.8)
                : Color.accentColor
        case .secondary:
            color = configuration.isPressed
                ? Color.secondaryAccentColor.opacity(0.8)
                : Color.secondaryAccentColor
        }
        
        return configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(
                Capsule()
                    .fill(color)
            )
    }
}

enum AccentType {
    case primary, secondary
}

extension ButtonStyle where Self == ThemeButtonStyle {
    static func theme(_ accentType: AccentType = .primary) -> Self {
        return ThemeButtonStyle(accentType: accentType)
    }
}


struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("welcome-title")
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 400)
            Spacer()
            Button("login-button-title", action: { print("meep") })
                .buttonStyle(.theme())
            Button("sign-up-button-title", action: {})
                .buttonStyle(.theme(.secondary))
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
