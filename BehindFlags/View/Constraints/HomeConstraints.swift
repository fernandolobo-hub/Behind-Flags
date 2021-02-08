//
//  HomeConstraints.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 02/02/21.
//

import UIKit

let homeConstraints = HomeConstraints()

class HomeConstraints {
    
    var playButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.playbutton(), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var playButtonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        label.text = "PLAY"
        return label
    }()
    
    var progressButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.progressbutton(), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var progressButtonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        label.text = "PROGRESS"
        return label
    }()
    
    var world: UIImageView = {
        let image = UIImage.world()
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var appTitle: UIImageView = {
        let image = UIImage.title()
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var homeFlags: UIImageView = {
        let image = UIImage.flags()
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    
    func playButtonConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            playButton.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            //Determines the button distance from the progress button
            playButton.bottomAnchor.constraint(equalTo: progressButton.topAnchor, constant: -20),
        ])
    }
    
    func progressButtonConstraints(viewController: UIViewController) {
        //Good practice center the below button in relation to the top button
        NSLayoutConstraint.activate([
            progressButton.centerXAnchor.constraint(equalTo: playButton.centerXAnchor),
            progressButton.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor, constant: -80)
        ])
    }
    
    func worldConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            world.centerYAnchor.constraint(equalTo: viewController.view.bottomAnchor),
            world.widthAnchor.constraint(equalToConstant: world.layer.bounds.width),
            //Centers the image
            world.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            //Determines the height of the image
            world.heightAnchor.constraint(equalToConstant: world.layer.bounds.height)
        ])
    }
    
    func appTitleConstraints(viewController: UIViewController) {
        NSLayoutConstraint.activate([
            appTitle.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            appTitle.topAnchor.constraint(equalTo: viewController.view.layoutMarginsGuide.topAnchor, constant: screenSize.height/20 - 40),
            appTitle.leadingAnchor.constraint(equalTo: viewController.view.layoutMarginsGuide.leadingAnchor, constant: 20),
            appTitle.trailingAnchor.constraint(equalTo: viewController.view.layoutMarginsGuide.trailingAnchor, constant: -20)
        ])
    }
    
    func addHomeFlagsConstraints(viewController: UIViewController) {
        let topConstraint = homeFlags.topAnchor.constraint(greaterThanOrEqualTo: appTitle.bottomAnchor)
        topConstraint.priority = UILayoutPriority(250)
        NSLayoutConstraint.activate([
            homeFlags.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            homeFlags.bottomAnchor.constraint(equalTo: world.topAnchor, constant: 20),
            topConstraint
        ])
    }
    
    func addPlayButtonLabelConstraints() {
        NSLayoutConstraint.activate([
            playButtonLabel.centerXAnchor.constraint(equalTo: playButton.centerXAnchor),
            playButtonLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor)
        ])
    }
    
    func addProgressButtonLabelConstraints() {
        NSLayoutConstraint.activate([
            progressButtonLabel.centerXAnchor.constraint(equalTo: progressButton.centerXAnchor),
            progressButtonLabel.centerYAnchor.constraint(equalTo: progressButton.centerYAnchor)
        ])
    }
    
    func setupView(viewController: UIViewController) {
        viewController.view.addSubview(homeFlags)
        viewController.view.addSubview(world)
        viewController.view.addSubview(playButton)
        playButton.addSubview(playButtonLabel)
        playButton.bringSubviewToFront(playButtonLabel)
        viewController.view.addSubview(progressButton)
        progressButton.addSubview(progressButtonLabel)
        viewController.view.addSubview(appTitle)
        playButtonConstraints(viewController: viewController)
        progressButtonConstraints(viewController: viewController)
        worldConstraints(viewController: viewController)
        appTitleConstraints(viewController: viewController)
        addHomeFlagsConstraints(viewController: viewController)
        addPlayButtonLabelConstraints()
        addProgressButtonLabelConstraints()
    }
    


    
}
