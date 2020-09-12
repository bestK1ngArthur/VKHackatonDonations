//
//  AddPhotoTableViewCell.swift
//  VKHackathonDonations
//
//  Created by admin on 12.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit
import QuartzCore

class AddPhotoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var borderView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor("3F8AE0").cgColor
        yourViewBorder.lineDashPattern = [5, 5]
        yourViewBorder.frame = self.borderView.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(rect: self.borderView.bounds).cgPath
        borderView.layer.addSublayer(yourViewBorder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
