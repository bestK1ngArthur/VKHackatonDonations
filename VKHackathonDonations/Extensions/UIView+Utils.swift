//
//  UIView+Utils.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return UINib(nibName: String(describing: T.self), bundle: Bundle(for: T.self)).instantiate(withOwner: nil, options: nil).first as! T
    }
}
