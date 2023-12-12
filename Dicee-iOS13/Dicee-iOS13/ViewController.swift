//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets allows me to reference UI elements
    
    @IBOutlet weak var diceOne: UIImageView!
    
    @IBOutlet weak var diceTwo: UIImageView!
    
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5
    
    let diceArray = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    
    @IBAction func buttonPressed(_ sender: Any)
    {
            //diceOne.image = diceArray[Int.random(in: 0...5)]
            diceOne.image = diceArray.randomElement()
        
//            diceTwo.image = diceArray[Int.random(in: 0...5)]
            diceTwo.image = diceArray.randomElement()
        
//        leftDiceNumber += 1
//        rightDiceNumber -= 1
        
    }

}

