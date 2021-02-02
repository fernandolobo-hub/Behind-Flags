//
//  QuestionBank.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 29/01/21.
//

import Foundation

class QuestionBank {
    var question = [Question]()
    
    init() {
        question.append(Question(country: "united-states-of-america", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Iene","Franco American","Bitcoin"], correctAnswer: "Dollar"))
        question.append(Question(country: "venezuela", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Venezuelan Peso","Real","Tenge"], correctAnswer: "Venezuelan Bolivar" ))
        question.append(Question(country: "china", question:typeQuestion.currency.rawValue, wrongAlternatives: ["South African Rand","Rupia","Thai Baht"], correctAnswer:"Yuan"))
        question.append(Question(country: "brazil", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Brazilian Peso","Brazilian Dollar","Thai Baht"], correctAnswer: "Real"))
        question.append(Question(country: "germany" , question:typeQuestion.currency.rawValue, wrongAlternatives: ["Pound Sterling","Yen","Yuan"], correctAnswer: "Euro"))
        question.append(Question(country: "austria", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Bitcoin" ,"South African Rand", "Rupia"], correctAnswer: "Euro"))
        question.append(Question(country: "australia", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Real","Tenge","Lao Kip"], correctAnswer: "Australian Dollar"))
        question.append(Question(country: "india", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Yen","Shekel","Yuan"], correctAnswer: "Rupee"))
        question.append(Question(country: "South Africa", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Pound Sterling","Yuan","Tenge"], correctAnswer: "South African Rand"))
        question.append(Question(country: "kosovo", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Real","Shekel","Rupee"], correctAnswer:"Euro"))
        question.append(Question(country: "united-states-of-america", question:typeQuestion.language.rawValue, wrongAlternatives: ["Portuguese", "Spanish", "Japanese"], correctAnswer: "English"))
        question.append(Question(country: "venezuela", question:typeQuestion.language.rawValue, wrongAlternatives: ["Russian","English", "Hungarian"], correctAnswer: "Spanish"))
        question.append(Question(country: "china", question:typeQuestion.language.rawValue, wrongAlternatives: ["Turkish","Hebrew","Dutch"], correctAnswer: "Mandarin"))
        question.append(Question(country: "germany", question:typeQuestion.language.rawValue, wrongAlternatives: ["Sorbian","Hungarian","Slovene"], correctAnswer: "german"))
        question.append(Question(country: "germany", question:typeQuestion.language.rawValue, wrongAlternatives: ["Sorbian","Hungarian","Slovene"], correctAnswer: "german"))
        question.append(Question(country: "austria", question:typeQuestion.language.rawValue, wrongAlternatives: ["Hungarian","Croatian","English"], correctAnswer:"German"))
        question.append(Question(country: "australia", question:typeQuestion.language.rawValue, wrongAlternatives: ["Bengali","Te Reo Mãori","Danes"], correctAnswer:"English"))
        question.append(Question(country: "india", question:typeQuestion.language.rawValue, wrongAlternatives: ["Spanish","French","English"], correctAnswer:"Hindi"))
        question.append(Question(country: "kosovo", question:typeQuestion.language.rawValue, wrongAlternatives: ["German" ,"Hungarian","English"], correctAnswer:"Albanian, Servian"))
        question.append(Question(country: "united-states-of-america", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1898","1912","1902"], correctAnswer:"1920"))
        question.append(Question(country: "venezuela", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1989","1954","1926"], correctAnswer:"1946"))
        question.append(Question(country: "china", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1930","1919","1989"], correctAnswer:"1947"))
        question.append(Question(country: "brazil", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1924","1899","1964"], correctAnswer:"1934"))
        question.append(Question(country: "germany", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1900","1954","1979"], correctAnswer:"1918"))
        question.append(Question(country: "austria", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1947","1929","1991"], correctAnswer:"1918"))
        question.append(Question(country: "australia", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1963","1952","1980"], correctAnswer:"1902"))
        question.append(Question(country: "india", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1912","2002","1980"], correctAnswer:"1950"))
        question.append(Question(country: "united-states-of-america", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Semi- Presidential Republic", "Absolute Monarchy","Parliamentary Republic"], correctAnswer:"Presidential Republic"))
        question.append(Question(country: "venezuela", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Constitutional Monarchy","Parliamentary Republic","Communism"], correctAnswer:"Presidential Republic"))
        question.append(Question(country: "china", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Absolute Monarchy","Parliamentary Republic","Constitutional Monarchy"], correctAnswer:"Communism"))
        question.append(Question(country: "brazil", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Parliamentary Republic","Absolute Monarchy","Semi- Presidential Republic"], correctAnswer:"Presidential Republic"))
        question.append(Question(country: "germany", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Absolute Monarchy","Communism","Semi- Presidential Republic"], correctAnswer:"Parliamentary Republic"))
        question.append(Question(country: "austria", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Feudalism","Absolute Monarchy","Constitutional Monarchy"], correctAnswer:"Parliamentary Republic"))
        question.append(Question(country: "australia", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Constitutional Monarchy","Parliamentary Republic","Communism"], correctAnswer:"Parliamentary Constitutional Monarchy"))
        question.append(Question(country: "india", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Absolute Monarchy","Semi- Presidential Republic","Presidential Republic"], correctAnswer:"Parliamentary Republic"))
        question.append(Question(country: "south-africa", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Constitutional Monarchy","Presidential Republic","Communism"], correctAnswer:"Parliamentary Republic"))
        question.append(Question(country: "kosovo", question:typeQuestion.governmentFormat.rawValue, wrongAlternatives: ["Communism","Presidential Republic","Constitutional Monarchy"], correctAnswer:"Parliamentary Republic"))
        question.append(Question(country: "united-states-of-america", question:typeQuestion.capital.rawValue, wrongAlternatives: ["New York","Las Vegas","Boston"], correctAnswer:"Washington DC"))
        question.append(Question(country: "venezuela", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Ciudad Bolivar","Maracaibo","Ciudad Guayana"], correctAnswer:"Caracas"))
        question.append(Question(country: "china", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Tianjin","Wuhan","Shenzhen"], correctAnswer:"Beijing"))
    }
    
    func generateAlternatives(list: [Question]) -> [Question] {
        var n: Int = 5
        var allQuestions: [Question] = []
        while n > 0 {
            if let randomElement = list.randomElement(){
                if !list.contains(randomElement) {
                    allQuestions.append(randomElement)
                    n -= 1
                }
            }
        }
        return allQuestions
    }
}
