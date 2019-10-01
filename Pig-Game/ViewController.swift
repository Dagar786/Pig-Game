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
    @IBOutlet var currentPlayerTurn: UILabel!
    
    var playerTurn = 0
    var playerArray : [Player] = [Player(), Player()]
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImage.image = UIImage(named: "dice1")
        p1PointsLable.text = "0"
        p2PointsLable.text = "0"
        currentPlayerTurn.text = "P1 Turn"
    }

   
    
    @IBAction func dicePressed(_ sender: Any) {
        
        let diceNumber = playerArray[playerTurn].roll()
        diceImage.image = UIImage(named: diceArray[diceNumber - 1])
        currentPointLable.text = "Points - \(playerArray[playerTurn].getCurrentScore())"
 
    }
    
    
    @IBAction func endTurnPressed(_ sender: Any) {
        playerArray[playerTurn].endTurn()
        if playerTurn == 0{
            p1PointsLable.text = "\(playerArray[playerTurn].getTotalScore())"
            currentPlayerTurn.text = "P2 Turn"
        }
        else if playerTurn == 1{
            p2PointsLable.text = "\(playerArray[playerTurn].getTotalScore())"
            currentPlayerTurn.text = "P1 Turn"
        }
        currentPointLable.text = "\(playerArray[playerTurn].getCurrentScore())"
        if playerTurn == 0{playerTurn = 1}
        else {playerTurn = 0}
        currentPointLable.text = "Points - 0"
    }
    
    
    
    
    class Player
    {
        
        var totalScore: Int
        var roundScore: Int
        
        
        init()
        {
            totalScore = 0
            roundScore = 0
        }
        
        func roll() -> Int
        {
            let rollValue:Int = Int.random(in: 1...6)
            if(rollValue != 1)
            {
                roundScore += rollValue
            }
            else
            {
                roundScore = 0
            }
            
            return rollValue;
        }
        
        func endTurn()
        {
            totalScore += roundScore
            roundScore = 0
        }
        
        func getTotalScore() -> Int
        {
            return totalScore
        }
        
        func getCurrentScore() -> Int
        {
            return roundScore
        }
    }
    
    class Player
    {
        
        var totalScore: Int
        var roundScore: Int
        
        
        init()
        {
            totalScore = 0
            roundScore = 0
        }
        
        func roll() -> Int
        {
            let rollValue:Int = Int.random(in: 1...6)
            if(rollValue != 1)
            {
                roundScore += rollValue
            }
            else
            {
                roundScore = 0
            }
            
            return rollValue;
        }
        
        func endTurn()
        {
            totalScore += roundScore
            roundScore = 0
        }
        
        func getTotalScore() -> Int
        {
            return totalScore
        }
        
        func getCurrentScore() -> Int
        {
            return roundScore
        }
    }
    
    
}

