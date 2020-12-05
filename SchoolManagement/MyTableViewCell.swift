//
//  MyTableViewCell.swift
//  SchoolManagement
//
//  Created by VD on 12/1/20.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSubject: UILabel!
    @IBOutlet weak var lblMarks: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
