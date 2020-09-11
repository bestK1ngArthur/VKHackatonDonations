//
//  FeedService.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class FeedService {
    
    func getPosts() -> [Post] {
        
        let author = Author(
            firstName: "Матвей",
            lastName: "Правосудов",
            photoURL: URL(string: "https://sun1-96.userapi.com/impf/c639623/v639623662/4d9db/HVnCQZZ0dJQ.jpg?size=400x0&quality=90&crop=597,237,1470,1470&sign=8abaa810a690d1d1cdfa94f9ac1e493d&ava=1")!
        )
        
        let donation = Donation(
            name: "Добряши помогают котикам",
            type: .oneTime(date: Date()),
            currentAmount: 1_000,
            neededAmount: 10_000,
            target: "Корм и уход для животных в приюте",
            description:
            """
            Привет-привет, добряш!

            Я создал это событие, чтобы показать какие у меня прекрасные добряши и буду счастлив, если получится вдохновить кого-нибудь хотя бы на маленький перевод в пользу фонда Юна.

            ◾ Если получится собрать 1 000 рублей, то это будет 5 обработанных животных от блох и клещей.

            ◾ Собранные 5 000 рублей превратятся в 25 кг корма для подопечных фонда.

            ◾ А 10 000 рублей позволят провести курс занятий с кинологом по социализации сложной собаки. Чтобы она легче нашла свой дом.

            В благотворительности не бывает маленьких сумм, поэтому если вы хотите помочь, то переведите любую сумму, будь-то 10 рублей или 1000 💚
            """,
            account: Account(
                name: "Счёт VK Pay",
                number: "1234"
            ),
            author: author,
            photo: #imageLiteral(resourceName: "Cat")
        )
        
        let metrics = Metrics(
            likesCount: 65,
            commentsCount: 65,
            sharesCount: 4,
            viewsCount: 7200
        )
        
        let post = Post(
            author: author,
            date: Date(),
            content: "Сейчас самое время помочь тем, кто не может попросить о помощи сам.",
            donation: donation,
            metrics: metrics
        )
        
        return Array(repeating: post, count: 2)
    }
}
