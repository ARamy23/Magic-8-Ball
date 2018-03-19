//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ahmed Ramy on 1/24/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var eightBallImage: UIImageView!
    @IBOutlet weak var answerLbl: UILabel!
    @IBOutlet weak var askButton: UIButton!
    
    
    var randomAnswerPicker : Int = 0
    
    var answers : [String] = ["Yes" , "No" , "No Doubt About It !" , "Absolutely" , "The Stars Say No" , "So It Shall Be" , "Unlikely" , "Indications Say No" , "Positively" , "You Can Count On It" , "Answer Unclear Ask Me Later" , "Don't Bet On It" , "Looks Like Yes" , "Chances Aren't Good" , "Focus And Ask Again" , "Can't Say Now" , "Prospect Good" , "Very Likeyly" , "Consult Me Later" , "Cannot Foretell Now"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func askBtnPressed(_ sender: UIButton) {
        randomAnswerPicker = Int(arc4random_uniform(20))
        answerLbl.text = answers[randomAnswerPicker];
        answerLbl.adjustsFontSizeToFitWidth = true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askBtnPressed(askButton)
    }
    
}

