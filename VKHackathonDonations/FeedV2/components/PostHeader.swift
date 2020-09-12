//
//  PostHeader.swift
//  VKHackathonDonations
//
//  Created by Vasiliy Dmitriev on 9/12/20.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import SwiftUI

struct PostHeader: View {
    let author: String
    let avatatUrl: String
    let postDate: String
    
    
    var body: some View {
        Row {
            Image(avatatUrl)
                .resizable()
                .frame(width: 44, height: 44)
            Column(alignment: .leading, spacing: 0) {
                Row {
                    YXText(text: author, fontSize: 15, fontColor: "#2C2D2E")
                    Spacer()
                    Image("More")
                        .foregroundColor(Color(UIColor("#B8C1CC")))
                }
                YXText(text: postDate, fontSize: 12, fontColor: "#818C99")
            }
        }
        .padding(12)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader(author: "Матвей Правосудов", avatatUrl: "Avatar", postDate: "час назад")
    }
}
