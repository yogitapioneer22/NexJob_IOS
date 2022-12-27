//
//  MenuCell.swift
//  neXjob.in
//
//  Created by Pioneer on 19/12/22.
//

import UIKit

class MenuCell: UITableViewCell {

    
    
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var lblMenuName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
