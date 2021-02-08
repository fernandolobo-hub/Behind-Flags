//
//  QuizConstraints.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 02/02/21.
//

import UIKit

let quizConstraints = QuizConstraints()
let distanceToBounds = screenSize.height/20

class QuizConstraints {
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 8
        return stackView
    }()
    
    var optionA: UIButton = {
        let button = UIButton(type: .system)
        button.setup(title: "US Dollar")
        return button
    }()
    var optionB: UIButton = {
        let button = UIButton(type: .system)
        button.setup(title: "US Dollar")
        return button
    }()
    var optionC: UIButton = {
        let button = UIButton(type: .system)
        button.setup(title: "US Dollar")
        return button
    }()
    var optionD: UIButton = {
        let button = UIButton(type: .system)
        button.setup(title: "US Dollar")
        return button
    }()
    

    var flagImage: UIImageView = {
        let image = UIImage(named: "brazil")
        let imageView = UIImageView(image: image)
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
//        imageView.layer.borderWidth = 3
//        imageView.layer.borderColor = quizColor1.cgColor
        return imageView
    }()
    var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        return view
    }()
    
    var questionCounter: UILabel = {
        let counter = UILabel()
        counter.translatesAutoresizingMaskIntoConstraints = false
        counter.text = "X/5"
        counter.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return counter
    }()
    var scoreLabel: UILabel = {
        let counter = UILabel()
        counter.translatesAutoresizingMaskIntoConstraints = false
        counter.text = "Score: 0"
        counter.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return counter
    }()
    var countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Brazil"
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        return label
    }()
    var questionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "What currency is used in this country?"
        label.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        label.textAlignment = .center
        label.numberOfLines = 3
        return label
    }()
    func addTopViewConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: viewController.view.topAnchor, constant: 0.2 * screenSize.height/2),
            topView.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor, constant: -1.1 * screenSize.height/2),
            topView.leadingAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            topView.trailingAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.trailingAnchor, constant: -25)
        ])
    }
    
    
    func addStackViewConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: distanceToBounds),
            stackView.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor, constant: -distanceToBounds)
            
        ])
    }
    
//    func addButtonConstraints(viewController: UIViewController) {
//        NSLayoutConstraint.activate([
//            optionA.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
//            optionA.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor, constant: -30),
//            optionA.topAnchor.constraint(equalTo: viewController.view.centerYAnchor, constant: 40),
//            //            optionA.leadingAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
//            //            optionA.trailingAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.trailingAnchor, constant: -25)
//            optionA.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 1),
//            optionA.heightAnchor.constraint(equalToConstant: 75)
//        ])
//    }
    func addQuestionCounterConstraints() {
        NSLayoutConstraint.activate([
            questionCounter.topAnchor.constraint(equalTo: topView.topAnchor),
            questionCounter.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 5)
        ])
    }
    
    func addScoreLabelConstraints() {
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: topView.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -5)
        ])
    }
    
    func addCountryLabelConstraints() {
        NSLayoutConstraint.activate([
            countryLabel.topAnchor.constraint(equalTo: flagImage.bottomAnchor, constant: 10),
            countryLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor)
        ])
    }
    
    func addQuestionLabelConstraints() {
        NSLayoutConstraint.activate([
            questionLabel.leadingAnchor.constraint(equalTo: topView.layoutMarginsGuide.leadingAnchor, constant: 5),
            questionLabel.trailingAnchor.constraint(equalTo: topView.layoutMarginsGuide.trailingAnchor, constant: -5),
            questionLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 20),
            questionLabel.bottomAnchor.constraint(equalTo: topView.layoutMarginsGuide.bottomAnchor, constant: -20)
            
        ])
    }
    
    func addFlagConstraints() {
        let height = flagImage.heightAnchor.constraint(lessThanOrEqualToConstant: 50)
        height.priority = UILayoutPriority(250)
        NSLayoutConstraint.activate([
            flagImage.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            flagImage.topAnchor.constraint(equalTo: topView.topAnchor, constant: 10),
            //Remember to change to the label
//            flagImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -100),
            flagImage.bottomAnchor.constraint(equalTo: countryLabel.topAnchor, constant: -10),
            flagImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            flagImage.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            height
        ])
    }
    
    func setupView(viewController: UIViewController) {
        let options: [UIButton] = [optionA, optionB, optionC, optionD]
        viewController.view.addSubview(topView)
//        viewController.view.addSubview(optionA)
        topView.addSubview(questionCounter)
        topView.addSubview(scoreLabel)
        topView.addSubview(countryLabel)
        topView.addSubview(questionLabel)
        topView.addSubview(flagImage)
        addTopViewConstraints(viewController: viewController)
//        addButtonConstraints(viewController: viewController)
        viewController.view.addSubview(stackView)
        for i in 0..<options.count {
            stackView.addArrangedSubview(options[i])
            options[i].widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 1).isActive = true
            options[i].heightAnchor.constraint(lessThanOrEqualToConstant: 75).isActive = true
        }
        addScoreLabelConstraints()
        addQuestionCounterConstraints()
        addCountryLabelConstraints()
        addQuestionLabelConstraints()
        addFlagConstraints()
        addStackViewConstraints(viewController: viewController)
        
    }
}




