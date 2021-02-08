//
//  Constants.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 02/02/21.
//


import UIKit

let screenSize = UIScreen.main.bounds
let midX = screenSize.width/2
let midY = screenSize.height/2

let homeColor1 = UIColor(red: 77/255, green: 125/255, blue: 209/255, alpha: 1)
let homeColor2 = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
let quizColor1 = UIColor(red: 133/255, green: 183/255, blue: 236/255, alpha: 1)
let quizColor2 = UIColor(red: 82/255, green: 142/255, blue: 205/255, alpha: 1)

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

extension UIViewController {
    func addGradientBackground(frame: CGRect, colors: [CGColor]) {
        
        // Creates a Gradient Layer
        let gradientLayer = CALayer.gradientFill(frame: frame, colors: colors)
        
        // Sets the gradient layer background into the scene
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UINavigationController {

  func popToViewController(ofClass: AnyClass, animated: Bool = true) {
    if let vc = viewControllers.filter({$0.isKind(of: ofClass)}).last {
      popToViewController(vc, animated: animated)
    }
  }

  func popViewControllers(viewsToPop: Int, animated: Bool = true) {
    if viewControllers.count > viewsToPop {
      let vc = viewControllers[viewControllers.count - viewsToPop - 1]
      popToViewController(vc, animated: animated)
    }
  }

}


