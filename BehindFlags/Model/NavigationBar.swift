//
//  NavigationBar.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 21/01/21.
//

import Foundation
import UIKit


let navigationBar = NavigationBar()

class NavigationBar {

    func configNavBar(view: UIViewController) {
        view.navigationController?.navigationBar.isHidden = false
        view.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        view.navigationController?.navigationBar.shadowImage = UIImage()
        view.navigationController?.navigationBar.isTranslucent = true
        view.navigationController?.navigationBar.tintColor = .white
        view.navigationController?.view.backgroundColor = UIColor.clear
        view.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        view.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 1, height: 1)
        view.navigationController?.navigationBar.layer.shadowRadius = 10
        view.navigationController?.navigationBar.layer.shadowOpacity = 0.5
    }

}


