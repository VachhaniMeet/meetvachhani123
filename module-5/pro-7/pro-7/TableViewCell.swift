//
//  TableViewCell.swift
//  pro-7
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var home_cv: UICollectionView!
    @IBOutlet weak var lbl_homecat: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        home_cv.delegate = self
        home_cv.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
    }

}
