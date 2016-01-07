//
//  SecondQuestionViewController.swift
//  Animal Trivia
//
//  Created by Daniel Gilbert on 1/6/16.
//  Copyright © 2016 Daniel Gilbert. All rights reserved.
//

import UIKit

class SecondQuestionViewController: UIViewController {
    
    // Labels
    @IBOutlet weak var lblA: UILabel!
    @IBOutlet weak var lblB: UILabel!
    @IBOutlet weak var lblC: UILabel!
    
    // Buttons
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Button Actions
    @IBAction func aButtonPressed(sender: UIButton) {
        answerChosen(btnA, correct: false)
    }
    
    @IBAction func bButtonPressed(sender: UIButton) {
        answerChosen(btnB, correct: true)
    }
    
    @IBAction func cButtonPressed(sender: UIButton) {
        answerChosen(btnC, correct: false)
    }
    
    @IBAction func nextButtonPressed(sender: UIButton) {
        resetChoices()
    }
    
    // Helper Functions
    
    func resetChoices() {
        let imgChoiceA = UIImage(named:"A")
        let imgChoiceB = UIImage(named: "B")
        let imgChoiceC = UIImage(named: "C")
        
        if (!btnA.enabled || !btnB.enabled || !btnC.enabled){
            btnA.setImage(imgChoiceA, forState: UIControlState.Normal)
            btnB.setImage(imgChoiceB, forState: UIControlState.Normal)
            btnC.setImage(imgChoiceC, forState: UIControlState.Normal)
            
            lblA.textColor = UIColor.whiteColor()
            lblB.textColor = UIColor.whiteColor()
            lblC.textColor = UIColor.whiteColor()
            
            enableButtons(true)
        }
    }
    
    func answerChosen(answer: UIButton, correct: Bool) {
        let imgIncorrectAnswer = UIImage(named: "incorrectAnswer")
        let imgCorrectAnswer = UIImage(named: "correctAnswer")
        
        if (answer.isEqual(btnA)){
            enableButtons(false)
            if(correct){
                btnA.setImage(imgCorrectAnswer, forState: UIControlState.Normal)
                lblA.textColor = UIColor.greenColor()
            }else{
                btnA.setImage(imgIncorrectAnswer, forState: UIControlState.Normal)
                lblA.textColor = UIColor.redColor()
            }
        }else if (answer.isEqual(btnB)){
            enableButtons(false)
            if(correct){
                btnB.setImage(imgCorrectAnswer, forState: UIControlState.Normal)
                lblB.textColor = UIColor.greenColor()
            }else{
                btnB.setImage(imgIncorrectAnswer, forState: UIControlState.Normal)
                lblB.textColor = UIColor.redColor()
            }
        }else if (answer.isEqual(btnC)){
            enableButtons(false)
            if(correct){
                btnC.setImage(imgCorrectAnswer, forState: UIControlState.Normal)
                lblC.textColor = UIColor.greenColor()
            }else{
                btnC.setImage(imgIncorrectAnswer, forState: UIControlState.Normal)
                lblC.textColor = UIColor.redColor()
            }
        }
    }
    
    func enableButtons(enable: Bool) {
        btnA.enabled = enable
        btnB.enabled = enable
        btnC.enabled = enable
    }
}
