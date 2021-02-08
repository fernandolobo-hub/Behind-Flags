//
//  BackgroundColor.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 05/02/21.
//

import UIKit

extension CALayer {

    // Creates a gradient color to fill received frame
    static func gradientFill(frame: CGRect, colors: [CGColor])-> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        gradientLayer.colors = colors
        return gradientLayer
    }
}

