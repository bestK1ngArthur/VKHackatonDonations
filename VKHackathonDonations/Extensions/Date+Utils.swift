//
//  Date+Utils.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import Foundation

extension Date {
    func stringToNow() -> String {
        // TODO: Use formatter
        return "час назад"
    }
    
    var month: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        dateFormatter.locale = .init(identifier: "Ru_ru")
        return dateFormatter.string(from: self)
    }
    
    var dayAndMonth: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM"
        dateFormatter.locale = .init(identifier: "Ru_ru")
        return dateFormatter.string(from: self)
    }
    
    var daysLeft: Int {
        return Calendar.current.dateComponents(Set([.day]), from: .today).day ?? 0
    }
    
    static var today: Date { Date() }
    
    static func futureDate(in days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: today)!
    }
}
