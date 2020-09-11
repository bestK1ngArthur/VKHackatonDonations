//
//  Post.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import Foundation

struct Post {
    let author: Author
    let date: Date
    let content: String
    let donation: Donation?
    let metrics: Metrics
}
