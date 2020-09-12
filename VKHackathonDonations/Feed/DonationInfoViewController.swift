//
//  DonationInfoViewController.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 12.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class DonationInfoViewController: UIViewController {
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var progressConstraint: NSLayoutConstraint!
    @IBOutlet weak var progressTrackView: UIView!
    
    @IBOutlet weak var footerInfoLabel: UILabel!
    @IBOutlet weak var footerProgressView: AmazingProgressView!
    
    @IBOutlet weak var donatedLabel: UILabel!
    @IBOutlet weak var toDonateLabel: UILabel!
    
    var metricsView: MetricsView!
    
    var donation: Donation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        configureIfNeeded()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.tintColor = UIColor.white
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
        navigationController?.navigationBar.backgroundColor = nil
        navigationController?.navigationBar.tintColor = nil
    }
    
    private func configureIfNeeded() {
        guard let donation = donation else { return }
        view.layoutIfNeeded()
        
        photoView.image = donation.photo
        titleLabel.text = donation.name
        authorLabel.text = donation.author.fullName
        subtitleLabel.text = donation.dateText
        
        switch donation.type {
        case .oneTime(let date):
            guard let date = date else { return }
            infoLabel.text = "Нужно собрать до \(date.dayAndMonth)"
        case .regular:
            infoLabel.text = "Нужно собрать в \(Date.today.month)"
        }
                
        let progressConstant = (1 - CGFloat(donation.currentAmount) / CGFloat(donation.neededAmount)) * progressTrackView.frame.width
        progressConstraint.constant = progressConstant
        
        descriptionLabel.text = donation.description
        
        if metricsView == nil {
            metricsView = MetricsView.fromNib()
            stackView.addArrangedSubview(metricsView)
        }
        
        metricsView.configure(donation.metrics)

        contentView.layoutIfNeeded()
        scrollView.contentSize = contentView.frame.size
        
        footerInfoLabel.text = donation.infoText
        footerProgressView.progress = Float(donation.currentAmount) / Float(donation.neededAmount)
        
        donatedLabel.text = donation.currentAmountText
        toDonateLabel.text = donation.neededAmountText
    }
}
