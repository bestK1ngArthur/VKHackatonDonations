//
//  Donation.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

struct Donation {
    let name: String
    let type: Type
    let currentAmount: Double
    let neededAmount: Double
    let target: String
    let description: String
    let account: Account
    let author: Author
    let photo: UIImage
}

extension Donation {
    enum `Type` {
        case oneTime(date: Date?)
        case regular
    }
}
