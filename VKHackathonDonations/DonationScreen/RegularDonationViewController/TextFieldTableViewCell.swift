//
//  TextFieldTableViewCell.swift
//  VKHackathonDonations
//
//  Created by admin on 12.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var arrowImage: UIImageView!
    var firstTap: Bool = true
    var textPlaceHolder: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textView.delegate = self
        textView.textColor = UIColor("818C99")
        arrowImage.transform = .init(rotationAngle: .pi/2)
        arrowImage.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension TextFieldTableViewCell: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        if firstTap {
            textPlaceHolder = textView.text
            textView.text = ""
            textView.textColor = .black
            firstTap = false
        }
        return true
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        if textView.text == "" {
            textView.text = textPlaceHolder
            textView.textColor = UIColor("818C99")
            firstTap = true
        }
        return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}
