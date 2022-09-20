//
//  Extensions.swift
//  WeatherDemo
//
//  Created by Codebucket on 19/09/22.
//

import Foundation
import SwiftUI

extension Double{
    func roundDouble() -> String{
        return String(format: "%0.f", self)
    }
}

extension View{
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View{
        clipShape(RoundedCornder(radius: radius, corners: corners))
    }
}

struct RoundedCornder: Shape{
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
