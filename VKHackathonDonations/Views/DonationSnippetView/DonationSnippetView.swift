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
    
    var didTap: (() -> Void)?
    
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
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        addGestureRecognizer(tap)
    }
    
    func configure(_ donation: Donation) {
        photoView.image = donation.photo
        titleLabel.text = donation.name
        subtitleLabel.text = "\(donation.author.fullName) · \(donation.dateText)"
        infoLabel.text = donation.infoText
        progressView.progress = Float(donation.currentAmount) / Float(donation.neededAmount)
    }
    
    @objc private func handleTap() {
        didTap?()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        fadeIn()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        fadeOut()
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        fadeOut()
    }
    
    private func fadeIn() {
        UIView.animate(withDuration: 0.1) { [unowned self] in
            self.alpha = 0.7
        }
    }
    
    private func fadeOut() {
        UIView.animate(withDuration: 0.1) { [unowned self] in
            self.alpha = 1
        }
    }
}
