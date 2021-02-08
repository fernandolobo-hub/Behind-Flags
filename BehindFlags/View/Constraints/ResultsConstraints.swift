//
//  ResultsConstraints.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 05/02/21.
//

import UIKit

let resultsConstraints = ResultsConstraints()


class ResultsConstraints {
    var results: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "X/X"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        return label
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 8
        return stackView
    }()
    
    var restartButton: UIButton = {
        let button = UIButton()
        button.setTitle("Restart", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return button
    }()
    
    var homeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Home", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return button
    }()
    
    
    
    func addResultsLabelConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            results.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            results.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor)
        ])
    }
    
    func addResultsButtonConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            restartButton.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            restartButton.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor, constant: 20),
            restartButton.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor, constant: -20),
            restartButton.heightAnchor.constraint(equalToConstant: 0.1 * screenSize.height),
            restartButton.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor, constant: -25)
        ])
        
    }

    
    func setupView(viewController: UIViewController) {
        viewController.view.addSubview(results)
        //viewController.view.addSubview(stackView)
        viewController.view.addSubview(restartButton)
        addResultsLabelConstraints(viewController: viewController)
        addResultsButtonConstraints(viewController: viewController)
    }
}
