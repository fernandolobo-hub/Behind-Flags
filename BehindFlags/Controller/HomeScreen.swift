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
        homeConstraints.setupView(viewController: self)
        navigationBar.configNavBar(view: self)
        homeConstraints.playButton.addTarget(self, action: #selector(startQuiz(sender:)), for: .touchUpInside)
        homeConstraints.progressButton.addTarget(self, action: #selector(checkProgress(sender:)), for: .touchUpInside)
        self.addGradientBackground(frame: view.frame, colors: [homeColor1.cgColor, homeColor2.cgColor])
    }
    
    @objc func startQuiz(sender: UIButton) {
        self.navigationController?.pushViewController(quizScreen, animated: true)
    }
    
    @objc func checkProgress(sender: UIButton) {
        print("Check Progress")
        self.navigationController?.pushViewController(ProgressScreen(), animated: true)
    }
    
}





