//
//  TableViewCell.swift
//  sqlite
//
//  Created by meet on 19/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_fullname: UILabel!
    @IBOutlet weak var lbl_subject: UILabel!
    @IBOutlet weak var lbl_city: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
