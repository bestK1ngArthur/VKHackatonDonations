//
//  YXOutlineButton.swift
//  VKHackathonDonations
//
//  Created by Vasiliy Dmitriev on 9/12/20.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import SwiftUI

struct YXOutlineButton: View {
    let title: String
    
    var body: some View {
        Button(action: {}) {
            YXText(text: title, fontSize: 14, fontColor: "#3F8AE0")
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke()
                .foregroundColor(Color(UIColor("#3F8AE0")))
                .frame(width: 86, height: 30)
        )
    }
}

struct YXOutlineButton_Previews: PreviewProvider {
    static var previews: some View {
        YXOutlineButton(title: "Помочь")
    }
}
