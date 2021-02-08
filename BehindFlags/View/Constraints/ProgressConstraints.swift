//
//  ProgressConstraints.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 07/02/21.
//

import UIKit

let progressConstraints = ProgressConstraints()

class ProgressConstraints {
    
    var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Progress"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        return label
    }()
    
    var progressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "X/X"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 35, weight: .medium)
        return label
    }()
    
    func addTitleConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            title.bottomAnchor.constraint(equalTo: progressLabel.topAnchor, constant: -screenSize.height/4)
        ])
    }
    
    func addProgressLabelConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            progressLabel.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            progressLabel.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor)
        ])
    }

    
    func setupView(viewController: UIViewController) {
        viewController.view.addSubview(title)
        viewController.view.addSubview(progressLabel)
        addTitleConstraints(viewController: viewController)
        addProgressLabelConstraints(viewController: viewController)
    }
 
}
