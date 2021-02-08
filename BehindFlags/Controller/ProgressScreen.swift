//
//  Progress.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 07/02/21.
//

import UIKit

let progressScreen: ProgressScreen = ProgressScreen()

class ProgressScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addGradientBackground(frame: view.frame, colors: [homeColor1.cgColor, homeColor2.cgColor])
        
        progressConstraints.setupView(viewController: self)
        progressConstraints.progressLabel.text = "\(Defaults.instance.answeredCorrectly.count)/\(questionBank.question.count)"
    }

    

    
}
