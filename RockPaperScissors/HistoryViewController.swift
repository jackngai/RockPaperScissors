//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Jack Ngai on 8/26/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var history = [RPSMatch]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("historyCell") as! CustomCell
        
        if (indexPath.row % 2) == 1 {
            cell.backgroundColor = UIColor.init(colorLiteralRed: 0.1, green: 0.1, blue: 0.1, alpha: 0.1)
        }
        
        let match = history[indexPath.row]
        
        if match.p2 == match.p1{
            cell.winningPlayer.text = "Tied"
        } else if match.winner == match.p1{
            cell.winningPlayer.text = "Won"
        } else {
            cell.winningPlayer.text = "Lose"
        }
        
    
        switch match.p1 {
        case .Rock:
            cell.playerHand.image = UIImage(named: "rock")
        case .Paper:
            cell.playerHand.image = UIImage(named: "paper")
        case .Scissors:
            cell.playerHand.image = UIImage(named: "scissors")
        }
        
        switch match.p2 {
        case .Rock:
            cell.computerHand.image = UIImage(named: "rock")
        case .Paper:
            cell.computerHand.image = UIImage(named: "paper")
        case .Scissors:
            cell.computerHand.image = UIImage(named: "scissors")
        }
 
        
        return cell
    }
    
    @IBAction func tapOkayToReturn(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}