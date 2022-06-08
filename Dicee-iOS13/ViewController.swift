//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    IBOutlet allows me to connect elements
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = UIImage(named: "DiceSix") // who.what = value
        diceImageView2.image = UIImage(named: "DiceTwo")
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dicesArray = [ UIImage(named: "DiceOne"),
                             UIImage(named: "DiceTwo"),
                             UIImage(named: "DiceThree"),
                             UIImage(named: "DiceFour"),
                             UIImage(named: "DiceFive"),
                             UIImage(named: "DiceSix") ]
        diceImageView1.image = dicesArray.randomElement()!
        diceImageView2.image = dicesArray[Int.random(in: 0...5)]
    }
    

}

