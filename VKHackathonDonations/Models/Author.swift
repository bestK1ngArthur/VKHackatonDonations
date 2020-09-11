//
//  Author.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import Foundation

struct Author {
    let firstName: String
    let lastName: String
    let photoURL: URL
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
