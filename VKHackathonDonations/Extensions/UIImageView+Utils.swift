//
//  UIImageView+Utils.swift
//  VKHackathonDonations
//
//  Created by Artem Belkov on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

extension UIImageView {
    func download(from url: URL, placeholderImage: UIImage? = nil) {
        DispatchQueue.global().async {
            if let imageData = try? Data(contentsOf: url),
               let image = UIImage(data: imageData) {
                DispatchQueue.main.async {
                    self.image = image
                }
            } else if let placeholderImage = placeholderImage {
                DispatchQueue.main.async {
                    self.image = placeholderImage
                }
            }
        }
    }
}
