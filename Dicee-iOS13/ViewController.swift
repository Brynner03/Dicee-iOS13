//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Referencing UI Elements
    @IBOutlet weak var diceImageViewUno: UIImageView!
    @IBOutlet weak var diceImageViewDos: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    // Roll dice function
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Array of images for the dices
        let images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // Left Dice
        diceImageViewUno.image = images[Int.random(in: 0...5)]
        // Right Dice
        diceImageViewDos.image = images.randomElement()
        
    }
}

