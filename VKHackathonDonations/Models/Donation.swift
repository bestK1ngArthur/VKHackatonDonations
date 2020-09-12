//
//  Donation.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

struct Donation {
    let name: String
    let type: Type
    let currentAmount: Double
    let neededAmount: Double
    let target: String
    let description: String
    let account: Account
    let author: Author
    let photo: UIImage
    let metrics: Metrics
    
    var dateText: String {
        switch type {
        case .oneTime(let date):
            if let date = date {
                return "Закончится через \(date.daysLeft) дней"
            } else {
                return ""
            }
        case .regular:
            return "Помощь нужна каждый месяц"
        }
    }
    
    var infoText: String {
        switch type {
        case .oneTime:
            return "Собрано \(priceFormatter.string(from: NSNumber(value: currentAmount))!) ₽ из \(priceFormatter.string(from: NSNumber(value: neededAmount))!) ₽"
        case .regular:
            return "Собрано в \(Date.today.month) \(priceFormatter.string(from: NSNumber(value: currentAmount))!) ₽"
        }
    }
    
    var currentAmountText: String {
        "\(priceFormatter.string(from: NSNumber(value: currentAmount))!) ₽"
    }
    
    var neededAmountText: String {
        "\(priceFormatter.string(from: NSNumber(value: neededAmount))!) ₽"
    }
    
    private let priceFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        
        formatter.maximumFractionDigits = 0
        formatter.numberStyle = .currency
        formatter.currencySymbol = ""
        formatter.currencyGroupingSeparator = " "
        
        return formatter
    }()
}

extension Donation {
    enum `Type` {
        case oneTime(date: Date?)
        case regular
    }
}
