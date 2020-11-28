//
//  RoundableShape.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/5/20.
//

import SwiftUI

struct RoundableShape: Shape {
    
    private let corners: [Corner]
    
    init(_ corners: Corner...) {
        self.corners = corners
    }
    
    init(_ corners: [Corner]) {
        self.corners = corners
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        var topLeftRadius: CGFloat = 0
        var topRightRadius: CGFloat = 0
        var bottomRightRadius: CGFloat = 0
        var bottomLeftRadius: CGFloat = 0
        
        corners.forEach { corner in
            if let topLeftModifier = corner.topLeftModification {
                topLeftRadius = topLeftModifier
            }
            
            if let topRightModifier = corner.topRightModification {
                topRightRadius = topRightModifier
            }
            
            if let bottomRightModifier = corner.bottomRightModification {
                bottomRightRadius = bottomRightModifier
            }
            
            if let bottomLeftModifier = corner.bottomLeftModification {
                bottomLeftRadius = bottomLeftModifier
            }
        }
        
        let topLeft = CGPoint(x: rect.minX + topLeftRadius, y: rect.minY + topLeftRadius)
        let top = CGPoint(x: rect.midX, y: rect.minY)
        let topRight = CGPoint(x: rect.maxX - topRightRadius, y: rect.minY + topRightRadius)
        let right = CGPoint(x: rect.maxX, y: rect.midY)
        let bottomRight = CGPoint(x: rect.maxX - bottomRightRadius, y: rect.maxY - bottomRightRadius)
        let bottom = CGPoint(x: rect.midX, y: rect.maxY)
        let bottomLeft = CGPoint(x: rect.minX + bottomLeftRadius, y: rect.maxY - bottomLeftRadius)
        let left = CGPoint(x: rect.minX, y: rect.midY)
        
        path.move(to: top)
        path.addRelativeArc(
            center: topRight,
            radius: topRightRadius,
            startAngle: Angle.degrees(270),
            delta: Angle.degrees(90)
        )
        path.addLine(to: right)
        path.addRelativeArc(
            center: bottomRight,
            radius: bottomRightRadius,
            startAngle: Angle.degrees(0),
            delta: Angle.degrees(90)
        )
        path.addLine(to: bottom)
        path.addRelativeArc(
            center: bottomLeft,
            radius: bottomLeftRadius,
            startAngle: Angle.degrees(90),
            delta: Angle.degrees(90)
        )
        path.addLine(to: left)
        path.addRelativeArc(
            center: topLeft,
            radius: topLeftRadius,
            startAngle: Angle.degrees(180),
            delta: Angle.degrees(90)
        )
        
        return path
    }
}

extension RoundableShape {
    enum Corner {
        case topLeft(CGFloat)
        case top(CGFloat)
        case topRight(CGFloat)
        case right(CGFloat)
        case bottomRight(CGFloat)
        case bottom(CGFloat)
        case bottomLeft(CGFloat)
        case left(CGFloat)
        case diagonalDown(CGFloat)
        case diagonalUp(CGFloat)
        
        var topLeftModification: CGFloat? {
            switch self {
            case .left(let radius),
                 .topLeft(let radius),
                 .top(let radius),
                 .diagonalDown(let radius):
                return radius
            default:
                return nil
            }
        }
        
        var topRightModification: CGFloat? {
            switch self {
            case .top(let radius),
                 .topRight(let radius),
                 .right(let radius),
                 .diagonalUp(let radius):
                return radius
            default:
                return nil
            }
        }
        
        var bottomRightModification: CGFloat? {
            switch self {
            case .right(let radius),
                 .bottomRight(let radius),
                 .bottom(let radius),
                 .diagonalDown(let radius):
                return radius
            default:
                return nil
            }
        }
        
        var bottomLeftModification: CGFloat? {
            switch self {
            case .bottom(let radius),
                 .bottomLeft(let radius),
                 .left(let radius),
                 .diagonalUp(let radius):
                return radius
            default:
                return nil
            }
        }
    }
}
