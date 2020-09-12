//
//  FeedViewController.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class FeedViewController: UITableViewController {

    private var posts: [Post] { App.feed.getPosts() }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = .init()
    }
        
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeedPostCell.self), for: indexPath) as? FeedPostCell else {
            fatalError()
        }

        let post = posts[indexPath.row]
        
        cell.configure(post)
        cell.donationSnippetView.didTap = { [unowned self] in
            guard let donation = post.donation else { return }
            self.showDonationInfo(with: donation)
        }
        
        return cell
    }
    
    private func showDonationInfo(with donation: Donation) {
        let donationInfoViewController = storyboard!.instantiateViewController(identifier: String(describing: DonationInfoViewController.self)) as! DonationInfoViewController
        donationInfoViewController.donation = donation
        navigationController?.pushViewController(donationInfoViewController, animated: true)
    }
}

