//
//  Extensions.swift
//  VKHackathonDonations
//
//  Created by admin on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//


import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
