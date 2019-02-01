//
//  ViewController.swift
//  Dicee
//
//  Created by SHIRLEY on 1/27/19.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //create constant array
    let diceImageArray = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //make a call from the updateDiceImage fucnction
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // This will get execute when the roll button gets pressed.
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        //print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceImageArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceImageArray[randomDiceIndex2])
    }
    
}

