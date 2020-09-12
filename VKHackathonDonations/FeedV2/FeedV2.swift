//
//  FeedV2.swift
//  VKHackathonDonations
//
//  Created by Vasiliy Dmitriev on 9/12/20.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import SwiftUI

// SwiftUI as Flutter
typealias Column = VStack
typealias Row = HStack
typealias Stack = ZStack


struct FeedV2: View {
    var body: some View {
        ScrollView {
            Column(alignment: .leading, spacing: 0) {
                PostHeader(author: "vasidmi", avatatUrl: "Avatar", postDate: "только что")
                YXText(text: "Сейчас самое время помочь тем, кто не может попросить о помощи сам.", fontSize: 15, fontColor: "#000", isSF: true)
                    .padding(.horizontal, 12)
                PostActions(postCounter: PostCounter(likes: 65, comments: 65, shares: 4, formattedViews: "7,2K"))
            }
        }
    }
}

struct FeedV2_Previews: PreviewProvider {
    static var previews: some View {
        FeedV2()
    }
}
