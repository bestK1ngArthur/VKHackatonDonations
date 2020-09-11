//
//  FeedService.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import Foundation

class FeedService {
    
    func getPosts() -> [Post] {
        return [
            Post(
                author: .init(
                    firstName: "Матвей",
                    lastName: "Правосудов",
                    photoURL: URL(string: "https://sun1-96.userapi.com/impf/c639623/v639623662/4d9db/HVnCQZZ0dJQ.jpg?size=400x0&quality=90&crop=597,237,1470,1470&sign=8abaa810a690d1d1cdfa94f9ac1e493d&ava=1")!
                ),
                date: .init(),
                content: "Сейчас самое время помочь тем, кто не может попросить о помощи сам.",
                donation: nil,
                metrics: .init(
                    likesCount: 65,
                    commentsCount: 65,
                    sharesCount: 4,
                    viewsCount: 7200
                )
            )
        ]
    }
}
