//
//  CustomCell.swift
//  RockPaperScissors
//
//  Created by Jack Ngai on 8/26/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var winningPlayer: UILabel!
    @IBOutlet weak var playerHand: UIImageView!
    @IBOutlet weak var computerHand: UIImageView!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
