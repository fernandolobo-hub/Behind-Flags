//
//  QuizScreen.swift
//  BehindFlags
//
//  Created by Fernando Lobo on 02/02/21.
//

import UIKit

let quizScreen = QuizScreen()

class QuizScreen: UIViewController {
    
    let questionBank: QuestionBank = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: String = ""
    var allQuestions: [Question] = []
    var alertMessage = "Oh. Keep working and you can do better next time"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonsTarget(buttons: [quizConstraints.optionA, quizConstraints.optionB, quizConstraints.optionC, quizConstraints.optionD])
        allQuestions = questionBank.generateAlternatives(list: questionBank.question)
        //self.view.backgroundColor = .gray
        self.view.backgroundColor = .systemGreen
        self.navigationItem.hidesBackButton = true
        self.addGradientBackground(frame: view.frame, colors: [quizColor1.cgColor, quizColor2.cgColor])
        quizConstraints.setupView(viewController: self)
        updateUI()
    }
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(false)
    //        allQuestions = questionBank.generateAlternatives(list: questionBank.question)
    //        restartQuiz()
    //    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    @objc func answerPressed(_ sender:UIButton!) {
        if sender.currentTitle == selectedAnswer {
            score += 1
            Defaults.instance.answeredCorrectly.append(allQuestions[questionNumber - 1])
        }
        questionNumber += 1
        updateUI()
        
    }
    
    func updateQuestion() {
        
        
        if questionNumber < allQuestions.count{
            let alternatives = allQuestions[questionNumber].allAlternatives.shuffled()
            quizConstraints.flagImage.image = UIImage(named: allQuestions[questionNumber].country)
            quizConstraints.questionLabel.text = allQuestions[questionNumber].question
            quizConstraints.countryLabel.text = allQuestions[questionNumber].country
            quizConstraints.optionA.setTitle(alternatives[0], for: UIControl.State.normal)
            quizConstraints.optionB.setTitle(alternatives[1], for: UIControl.State.normal)
            quizConstraints.optionC.setTitle(alternatives[2], for: UIControl.State.normal)
            quizConstraints.optionD.setTitle(alternatives[3], for: UIControl.State.normal)
            selectedAnswer = allQuestions[questionNumber].correctAnswer
            print(allQuestions[questionNumber].allAlternatives)
        } else {
            if score > 5 && score < 8 {
                alertMessage = "Great job! You are almost there"
            } else if score > 8 {
                alertMessage = "Impressive! You know everything around the world"
            }
            
            quizConstraints.questionCounter.text = "10/10"
            let alert = UIAlertController(title: "Finished", message: "Result:\(score)/10\n\(alertMessage)", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { action in
                                                self.navigationController?.popViewController(animated: true)
                self.restartQuiz()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            //            self.navigationController?.pushViewController(ResultsScreen(), animated: true)
        }
    }
    
    func updateUI() {
        quizConstraints.scoreLabel.text = "Score: \(score)"
        quizConstraints.questionCounter.text = "\(questionNumber + 1)/10"
        updateQuestion()
    }
    
    func restartQuiz() {
        score = 0
        questionNumber = 0
        allQuestions = questionBank.generateAlternatives(list: questionBank.question)
        updateQuestion()
        updateUI()
    }
    
    func addButtonsTarget(buttons: [UIButton]) {
        for button in buttons {
            button.addTarget(self, action: #selector(answerPressed(_:)), for: .touchUpInside)
        }
    }
    
}
