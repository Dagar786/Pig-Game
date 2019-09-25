//
//  ViewController.swift
//  Pig-Game
//
//  Created by Ahmed, Sowdagar Rehan on 9/25/19.
//  Copyright © 2019 Ahmed, Dagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceImage: UIImageView!
    @IBOutlet var p1PointsLable: UILabel!
    @IBOutlet var p2PointsLable: UILabel!
    @IBOutlet var currentPointLable: UILabel!
    var playerTurn = 0
    // var playerArray : [Player] = [Player, Player]
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImage.image = UIImage(named: "dice1")
        
    }

   
    
    @IBAction func dicePressed(_ sender: Any) {
        
        //let diceNumber = playerArray[playerTurn].roll()
        //diceImage.image = UIImage(named: diceArray[diceNumber - 1])
        //currentPointLable.text = "\(playerArray[playerTurn].getCurrentScore())"
 
    }
    
    
    @IBAction func endTurnPressed(_ sender: Any) {
        //playerArray[playerTurn].endTurn()
        if playerTurn == 0{
            //p1PointsLable.text = layerArray[playerTurn].getTotalScore()
        }
        else if playerTurn == 1{
            //p2PointsLable.text = layerArray[playerTurn].getTotalScore()
        }
        //currentPointLable.text = "\(playerArray[playerTurn].getCurrentScore())"
    }
    
    
    
    
}

