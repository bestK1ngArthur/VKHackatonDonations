//
//  YXText.swift
//  VKHackathonDonations
//
//  Created by Vasiliy Dmitriev on 9/12/20.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import SwiftUI

struct YXText: View {
    let text: String
    let fontSize: CGFloat
    let fontColor: String
    var isSF: Bool = false
    
    var body: some View {
        Text(text)
            .font(Font.custom(isSF ? "SF Pro Text" : "TT Commons", size: fontSize))
            .foregroundColor(Color(UIColor(fontColor)))
    }
}
