//
//  Question.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 22/01/21.
//

import Foundation

enum typeQuestion: String {
    case currency = "What currency is used in this country?"
    case language = "What language the population of this country speaks?"
    case womenVote = "When women won the right to vote?"
    case governmentFormat = "What is the form of government in this country?"
    case border = "Has any border with the country above"
    case capital = "What is the capital of this country?"
    case ocean = "Which ocean or sea this country has in its coast?"
    case continent = "What continent this country belongs to"
    case leader = "Who is the political ruler in charge of the government?"
    case pci = "What is the value of the Per Capital Income of this country? (Of 2019)"
}


class Question: Equatable {
    
    static func == (lhs: Question, rhs: Question) -> Bool {
        return
            lhs.country == rhs.country &&
            lhs.question == rhs.question &&
            lhs.wrongAlternatives == rhs.wrongAlternatives &&
            lhs.correctAnswer == rhs.correctAnswer &&
            lhs.allAlternatives == rhs.allAlternatives
    }
    

    let country: String
    let question: String
    let wrongAlternatives: [String]
    let correctAnswer: String
    var allAlternatives: [String] {
        var allAlternatives = wrongAlternatives
        allAlternatives.append(correctAnswer)
        return allAlternatives.shuffled()
    }
    
    init(country: String, question: String, wrongAlternatives: [String], correctAnswer: String) {
        self.country = country
        self.question = question
        self.wrongAlternatives = wrongAlternatives
        self.correctAnswer = correctAnswer
    }
}





