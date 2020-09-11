//
//  MetricsView.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class MetricsView: UIView {
    @IBOutlet weak var likesCountLabel: UILabel!
    @IBOutlet weak var commentsCountLabel: UILabel!
    @IBOutlet weak var sharesCountLabel: UILabel!
    @IBOutlet weak var viewsCountLabel: UILabel!
    
    func configure(_ metrics: Metrics) {
        likesCountLabel.text = formattedString(from: metrics.likesCount)
        commentsCountLabel.text = formattedString(from: metrics.commentsCount)
        sharesCountLabel.text = formattedString(from: metrics.sharesCount)
        viewsCountLabel.text = formattedString(from: metrics.viewsCount)
    }
    
    private func formattedString(from metric: Int) -> String {
        switch metric {
        case 0..<1_000: return String(metric)
        case 1_000..<1_000_000: return "\(metric / 1000)K"
        case 1_000_000..<1_000_000_000: return "\(metric / 1000_000)K"
        default: return String(metric)
        }
    }
}
