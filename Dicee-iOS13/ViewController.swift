//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
        
    @IBOutlet weak var diceRollResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonDiceRoll(_ sender: UIButton) {
        let rollDiceOne = Int.random(in: 1..<7)
        let rollDiceTwo = Int.random(in: 1..<7)
        
        self.diceRollResult.text = String(rollDiceOne + rollDiceTwo);
        self.diceRollResult.alpha = 1;
        
        
        UIView.transition(with: self.diceImageViewOne,
                          duration: 0.5,
                                options: .transitionCrossDissolve,
                                animations: {
                                  self.diceImageViewOne.image = UIImage(imageLiteralResourceName: self.getImageNameByRollDice(rollDiceOne))
              }, completion: nil)
        
        
        UIView.transition(with: self.diceImageViewTwo,
                          duration: 0.5,
                                options: .transitionCrossDissolve,
                                animations: {
                                  self.diceImageViewTwo.image = UIImage(imageLiteralResourceName: self.getImageNameByRollDice(rollDiceTwo))
              }, completion: nil)
        
    }
    
    func getImageNameByRollDice(_ number: Int) -> String {
        
        switch number {
        case 1:
            return "DiceOne";
        case 2:
            return "DiceTwo";
        case 3:
            return "DiceThree";
        case 4:
            return "DiceFour";
        case 5:
            return "DiceFive";
        case 6:
            return "DiceSix";
        default:
            print(number)
            return "";
        }
        
    }
    
    
}

