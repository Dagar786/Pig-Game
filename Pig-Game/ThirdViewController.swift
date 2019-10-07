//
//  ThirdViewController.swift
//  Pig-Game
//
//  Created by Ahmed, Sowdagar Rehan on 10/1/19.
//  Copyright © 2019 Ahmed, Dagar. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var score1 : String?
    var score2 : String?
    var winner : String?
    
    @IBOutlet var finalP1Score: UILabel!
    @IBOutlet var finalP2Score: UILabel!
    @IBOutlet var winnerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        finalP1Score.text = score1
        finalP2Score.text = score2
        winnerLabel.text = winner
    }
    
    
    
    
    
    
    
    

    
    //MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    
   

}
