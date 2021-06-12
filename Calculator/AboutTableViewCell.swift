//
//  AboutTableViewCell.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/22/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import UIKit

class AboutTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
