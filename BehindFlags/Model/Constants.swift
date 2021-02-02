//
//  Constants.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 02/02/21.
//


import UIKit

extension UIImage {
    class func world() -> UIImage {
        return UIImage(named: "world")!
    }
    class func playbutton() -> UIImage {
        return UIImage(named: "playbutton")!
    }
    class func progressbutton() -> UIImage {
        return UIImage(named: "progressbutton")!
    }
    class func flags() -> UIImage {
        return UIImage(named: "flags")!
    }
    class func title() -> UIImage {
        return UIImage(named: "title")!
    }
}

let screenSize = UIScreen.main.bounds
let midX = screenSize.width/2
let midY = screenSize.height/2
