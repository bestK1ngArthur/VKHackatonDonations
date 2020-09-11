//
//  FeedPostCell.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class FeedPostCell: UITableViewCell {
    @IBOutlet weak var userPhotoView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        userPhotoView.layer.cornerRadius = userPhotoView.bounds.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(_ post: Post) {
        userPhotoView.download(from: post.author.photoURL)
        userNameLabel.text = post.author.fullName
        dateLabel.text = post.date.stringToNow()
        contentLabel.text = post.content
    }
}