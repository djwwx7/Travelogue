//
//  TripsTableViewCell.swift
//  Travelogue
//
//  Created by Cody Whitaker on 7/26/18.
//  Copyright © 2018 Cody Whitaker. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var tripTitle: UILabel!
    @IBOutlet weak var tripDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
