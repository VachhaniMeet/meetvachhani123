//
//  TableViewCell.swift
//  covid
//
//  Created by meet on 24/09/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_state: UILabel!
    @IBOutlet weak var lbl_activecase: UILabel!
    @IBOutlet weak var lbl_recovered: UILabel!
    @IBOutlet weak var lbl_statecode: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension secoundViewController{
    
}
