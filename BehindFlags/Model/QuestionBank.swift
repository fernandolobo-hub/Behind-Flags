//
//  QuestionBank.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 29/01/21.
//

import Foundation

let questionBank: QuestionBank = QuestionBank()

class QuestionBank {
    var question = [Question]()
    
    init() {
        question.append(Question(country: "usa", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Iene","Franco American","Bitcoin"], correctAnswer: "Dollar"))
        question.append(Question(country: "venezuela", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Venezuelan Peso","Real","Tenge"], correctAnswer: "Venezuelan Bolivar" ))
        question.append(Question(country: "china", question:typeQuestion.currency.rawValue, wrongAlternatives: ["South African Rand","Rupia","Thai Baht"], correctAnswer:"Yuan"))
        question.append(Question(country: "brazil", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Brazilian Peso","Brazilian Dollar","Thai Baht"], correctAnswer: "Real"))
        question.append(Question(country: "germany" , question:typeQuestion.currency.rawValue, wrongAlternatives: ["Pound Sterling","Yen","Yuan"], correctAnswer: "Euro"))
        question.append(Question(country: "austria", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Bitcoin" ,"South African Rand", "Rupia"], correctAnswer: "Euro"))
        question.append(Question(country: "australia", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Real","Tenge","Lao Kip"], correctAnswer: "Australian Dollar"))
        question.append(Question(country: "india", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Yen","Shekel","Yuan"], correctAnswer: "Rupee"))
        question.append(Question(country: "south africa", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Pound Sterling","Yuan","Tenge"], correctAnswer: "South African Rand"))
        question.append(Question(country: "kosovo", question:typeQuestion.currency.rawValue, wrongAlternatives: ["Real","Shekel","Rupee"], correctAnswer:"Euro"))
        question.append(Question(country: "usa", question:typeQuestion.language.rawValue, wrongAlternatives: ["Portuguese", "Spanish", "Japanese"], correctAnswer: "English"))
        question.append(Question(country: "venezuela", question:typeQuestion.language.rawValue, wrongAlternatives: ["Russian","English", "Hungarian"], correctAnswer: "Spanish"))
        question.append(Question(country: "china", question:typeQuestion.language.rawValue, wrongAlternatives: ["Turkish","Hebrew","Dutch"], correctAnswer: "Mandarin"))
        question.append(Question(country: "germany", question:typeQuestion.language.rawValue, wrongAlternatives: ["Sorbian","Hungarian","Slovene"], correctAnswer: "German"))
        question.append(Question(country: "austria", question:typeQuestion.language.rawValue, wrongAlternatives: ["Hungarian","Croatian","English"], correctAnswer:"German"))
        question.append(Question(country: "australia", question:typeQuestion.language.rawValue, wrongAlternatives: ["Bengali","Te Reo Mãori","Danes"], correctAnswer:"English"))
        question.append(Question(country: "india", question:typeQuestion.language.rawValue, wrongAlternatives: ["Spanish","French","English"], correctAnswer:"Hindi"))
        question.append(Question(country: "kosovo", question:typeQuestion.language.rawValue, wrongAlternatives: ["German" ,"Hungarian","English"], correctAnswer:"Albanian, Servian"))
        question.append(Question(country: "usa", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1898","1912","1902"], correctAnswer:"1920"))
        question.append(Question(country: "venezuela", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1989","1954","1926"], correctAnswer:"1946"))
        question.append(Question(country: "china", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1930","1919","1989"], correctAnswer:"1947"))
        question.append(Question(country: "brazil", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1924","1899","1964"], correctAnswer:"1934"))
        question.append(Question(country: "germany", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1900","1954","1979"], correctAnswer:"1918"))
        question.append(Question(country: "austria", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1947","1929","1991"], correctAnswer:"1918"))
        question.append(Question(country: "australia", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1963","1952","1980"], correctAnswer:"1902"))
        question.append(Question(country: "india", question:typeQuestion.womenVote.rawValue, wrongAlternatives: ["1912","2002","1980"], correctAnswer:"1950"))
        question.append(Question(country: "usa", question:typeQuestion.capital.rawValue, wrongAlternatives: ["New York","Las Vegas","Boston"], correctAnswer:"Washington DC"))
        question.append(Question(country: "venezuela", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Ciudad Bolivar","Maracaibo","Ciudad Guayana"], correctAnswer:"Caracas"))
        question.append(Question(country: "china", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Tianjin","Wuhan","Shenzhen"], correctAnswer:"Beijing"))
        question.append(Question(country: "brazil", question:typeQuestion.capital.rawValue, wrongAlternatives: ["São Paulo","Rio de Janeiro","Pernambuco"], correctAnswer: "Brasilia"))
        question.append(Question(country: "germany" , question:typeQuestion.capital.rawValue, wrongAlternatives: ["Stuttgart","Munique","Frankfurt"], correctAnswer:"Berlim"))
        question.append(Question(country: "austria", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Salzburgo","Graz","Linz"], correctAnswer: "Vienna"))
        question.append(Question(country: "australia", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Brisbane","Melbourne","Sidney"], correctAnswer: "Camberra"))
        question.append(Question(country: "india", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Bangalore","Calcuta","Pune"], correctAnswer: "New Delhi"))
        question.append(Question(country: "south africa", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Bloemfontein","Pretoria","Cape Town"], correctAnswer: "All the answers above"))
        question.append(Question(country: "kosovo", question:typeQuestion.capital.rawValue, wrongAlternatives: ["Pec","Prizren","Moscou"], correctAnswer: "Pristina"))
        question.append(Question(country: "usa", question:typeQuestion.continent.rawValue, wrongAlternatives: ["Europe","Asia","Central America"], correctAnswer: "North America"))
        question.append(Question(country: "china", question:typeQuestion.continent.rawValue, wrongAlternatives: ["Europe","America","Africa"], correctAnswer: "Asia"))
        question.append(Question(country: "brazil", question:typeQuestion.continent.rawValue, wrongAlternatives: ["Oceania","Africa","Europe"], correctAnswer: "America"))
        question.append(Question(country: "germany", question:typeQuestion.continent.rawValue, wrongAlternatives: ["South America","Europe","Oceania"], correctAnswer: "Europe"))
        question.append(Question(country: "austria", question:typeQuestion.continent.rawValue, wrongAlternatives: ["North America","Africa","Antarctica"], correctAnswer: "Europe"))
        question.append(Question(country: "australia", question:typeQuestion.continent.rawValue, wrongAlternatives: ["Europe", "South America", "Oceania"], correctAnswer: "Oceania"))
        question.append(Question(country: "india", question:typeQuestion.continent.rawValue, wrongAlternatives: ["Africa","Europe","America"], correctAnswer: "Asia"))
        question.append(Question(country: "south africa", question:typeQuestion.continent.rawValue, wrongAlternatives: ["America","Europe","Antarctica"], correctAnswer: "Africa"))
        question.append(Question(country: "Kosovo", question:typeQuestion.continent.rawValue, wrongAlternatives: ["America","Oceania","Antarctica"], correctAnswer: "Europe"))
        
    }
    
    func generateAlternatives(list: [Question]) -> [Question] {
        var n: Int = 10
        var allQuestions: [Question] = []
        while n > 0 {
            if let randomElement = list.randomElement(){
                if !allQuestions.contains(randomElement) {
                    allQuestions.append(randomElement)
                    n -= 1
                }
            }
        }
        return allQuestions
    }
}
