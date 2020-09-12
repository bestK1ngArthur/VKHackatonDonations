//
//  ProgressBar.swift
//  VKHackathonDonations
//
//  Created by Vasiliy Dmitriev on 9/12/20.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import SwiftUI

struct YXProgressBar: View {
    let title: String
    let currentValue: CGFloat
    let maxValue: CGFloat
    
    var body: some View {
        Column(alignment: .leading, spacing: 8) {
            YXText(text: title, fontSize: 13, fontColor: "#000", isSF: true)
            ProgressBar(currentValue: currentValue, maxValue: maxValue)
        }
        .padding(12)
    }
}

struct YXProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        YXProgressBar(title: "Собрано 8 750 ₽ из 10 000 ₽", currentValue: 8750, maxValue: 10_000)
    }
}

struct ProgressBar: View {
    let currentValue: CGFloat
    let maxValue: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            Stack(alignment: .leading) {
                Capsule()
                    .frame(height: 4)
                    .foregroundColor(Color(UIColor("#3F8AE0")))
                    .opacity(0.3)
                
                Capsule()
                    .frame(width: geometry.size.width * self.currentValue / self.maxValue, height: 4)
                    .foregroundColor(Color(UIColor("#3F8AE0")))
                
            }
        }
    }
}
