//
//  PostActions.swift
//  VKHackathonDonations
//
//  Created by Vasiliy Dmitriev on 9/12/20.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import SwiftUI

struct PostActions: View {
    let postCounter: PostCounter
    var body: some View {
        Row {
            Row(spacing: 20) {
                PostAction(iconName: "Like", actionCount: String(postCounter.likes), itemsSpacing: 6)
                PostAction(iconName: "Comment", actionCount: String(postCounter.likes), itemsSpacing: 6)
                PostAction(iconName: "Share", actionCount: String(postCounter.likes), itemsSpacing: 6)
            }
            Spacer()
            PostAction(iconName: "View", actionCount: postCounter.formattedViews, itemsSpacing: 0)
        }
        .padding(14)
    }
}

struct PostActions_Previews: PreviewProvider {
    static var previews: some View {
        PostActions(postCounter: PostCounter(likes: 65, comments: 65, shares: 4, formattedViews: "7,2K"))
    }
}

struct PostAction: View {
    let iconName: String
    let actionCount: String
    let itemsSpacing: CGFloat
    var body: some View {
        Row(spacing: itemsSpacing){
            Image(iconName)
                .frame(width: 24, height: 24)
                .foregroundColor(Color(UIColor("#99A2AD")))
            Text(String(actionCount))
                .font(Font.custom("TT Commons", size: 14))
                .foregroundColor(Color(UIColor("#818C99")))
        }
    }
}
