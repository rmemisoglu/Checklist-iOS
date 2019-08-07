//
//  ChecklistTableViewCell.swift
//  Checklist
//
//  Created by Others on 27.06.2019.
//  Copyright © 2019 Others. All rights reserved.
//

import UIKit

class ChecklistTableViewCell: UITableViewCell {

    @IBOutlet weak var checkmarklabel: UILabel!
    @IBOutlet weak var todoTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
