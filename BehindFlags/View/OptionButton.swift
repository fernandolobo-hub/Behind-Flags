//
//  Options.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 04/02/21.
//

import UIKit

extension UIButton {
    
    func setup(title: String){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        self.tintColor = .black
        self.layer.cornerRadius = 12
        self.titleLabel?.numberOfLines = 2
        self.titleLabel?.textAlignment = .center
        self.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
}

