//
//  ViewController.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 19/01/21.
//

import UIKit

class HomeScreen: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .cyan
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    
    @IBAction func showQuiz(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    
}

