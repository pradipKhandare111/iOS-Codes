//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var imageViewGame: UIImageView!
    
    let arrayBall = [

        UIImage(imageLiteralResourceName: "ball1"),
        UIImage(imageLiteralResourceName: "ball2"),
        UIImage(imageLiteralResourceName: "ball3"),
        UIImage(imageLiteralResourceName: "ball4"),
        UIImage(imageLiteralResourceName: "ball5")

    ]
    
    @IBAction func buttonPressed(_ sender: Any) {
        
       imageViewGame.image = UIImage(imageLiteralResourceName: "ball3")
        
        
        imageViewGame.image = arrayBall.randomElement()
//        let rn = arrayBall[Int.random(in: 0...4)]
//        print(rn)
    }
    
}
















//    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

//




//

