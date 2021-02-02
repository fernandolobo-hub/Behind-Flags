//
//  HomeScreen.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 01/02/21.
//

import UIKit

class HomeScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeConstraints.viewController = self
        homeConstraints.setupView()
    }
}





