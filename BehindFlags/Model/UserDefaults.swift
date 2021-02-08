//
//  UserDefaults.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 07/02/21.
//

import Foundation

class Defaults {
    
    
    public static var instance = Defaults()
    var answeredCorrectly: [Question] = []
    let defaults = UserDefaults.standard
    
    func saveState() {
        if let question = try? JSONEncoder().encode(answeredCorrectly){
            UserDefaults.standard.set(question, forKey: "Question")
        }
    }
    
    func retrieveState() {
        if let question = UserDefaults.standard.data(forKey: "Question"){
            if let questionDecoded = try? JSONDecoder().decode([Question].self, from: question){
                self.answeredCorrectly = questionDecoded
                return
            }
        }
    }
}
