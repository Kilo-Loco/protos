//
//  ExampleView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/5/20.
//

import SwiftUI

struct ExampleView: View {
    
    @State var topLeftIsOn = true
    @State var topLeftSliderValue: CGFloat = 0
    @State var topRightIsOn = true
    @State var topRightSliderValue: CGFloat = 0
    @State var bottomRightIsOn = true
    @State var bottomRightSliderValue: CGFloat = 0
    @State var bottomLeftIsOn = true
    @State var bottomLeftSliderValue: CGFloat = 0
    
    var corners: [RoundableShape.Corner] {
        var corners = [RoundableShape.Corner]()
        if topLeftIsOn {
            corners.append(.topLeft(topLeftSliderValue))
        }
        if topRightIsOn {
            corners.append(.topRight(topRightSliderValue))
        }
        if bottomRightIsOn {
            corners.append(.bottomRight(bottomRightSliderValue))
        }
        if bottomLeftIsOn {
            corners.append(.bottomLeft(bottomLeftSliderValue))
        }
        return corners
    }
    
    var body: some View {
        VStack {
            Color(.purple)
                .frame(width: 250, height: 250)
                .clipShape(RoundableShape(corners))
                .shadow(color: .black, radius: 5, x: 5, y: 5)
            
            Spacer()
            
            CornerControlView("Top Left", isOn: $topLeftIsOn, sliderValue: $topLeftSliderValue)
            CornerControlView("Top Right", isOn: $topRightIsOn, sliderValue: $topRightSliderValue)
            CornerControlView("Bottom Right", isOn: $bottomRightIsOn, sliderValue: $bottomRightSliderValue)
            CornerControlView("Bottom Left", isOn: $bottomLeftIsOn, sliderValue: $bottomLeftSliderValue)
        }
    }
}

struct CornerControlView: View {
    
    let title: String
    let isOn: Binding<Bool>
    let sliderValue: Binding<CGFloat>
    
    init(_ title: String, isOn: Binding<Bool>, sliderValue: Binding<CGFloat>) {
        self.title = title
        self.isOn = isOn
        self.sliderValue = sliderValue
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: isOn, label: { Text(title) })
            Slider(value: sliderValue, in: 0...125, step: 1)
        }
        .padding()
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
