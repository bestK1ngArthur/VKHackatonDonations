//
//  DonationSnippetView.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class DonationSnippetView: UIView {
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var footerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.masksToBounds = false
        layer.cornerRadius = 10
        layer.borderColor = UIColor("EBEBEB").cgColor
        layer.borderWidth = 0.5
        layer.shadowOpacity = 0.04
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .init(width: 0, height: 2)
        layer.shadowRadius = 6
        
        photoView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        photoView.layer.cornerRadius = 10
        footerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        footerView.layer.cornerRadius = 10
        
        progressView.transform = .init(scaleX: 1, y: 2)
                
        helpButton.layer.cornerRadius = 10
        helpButton.layer.borderColor = UIColor("3F8AE0").cgColor
        helpButton.layer.borderWidth = 1
    }
    
    func configure(_ donation: Donation) {
        photoView.image = donation.photo
        titleLabel.text = donation.name
        subtitleLabel.text = "\(donation.author.fullName) · FUCK"
        infoLabel.text = "Памагите"
        progressView.progress = Float(donation.currentAmount) / Float(donation.neededAmount)
    }
}
