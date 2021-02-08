//
//  ResultsScreen.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 05/02/21.
//

import UIKit

class ResultsScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        resultsConstraints.restartButton.addTarget(self, action: #selector(restartQuiz(_:)), for: .touchUpInside)

        // Do any additional setup after loading the view.
        self.addGradientBackground(frame: view.frame, colors: [quizColor1.cgColor, quizColor2.cgColor])
        self.navigationItem.hidesBackButton = true
        resultsConstraints.setupView(viewController: self)
    }
    
    
    
    @objc func restartQuiz(_ sender:UIButton!) {
        self.navigationController?.popToViewController(QuizScreen(), animated: true)
        print("Touched")
    }

}
