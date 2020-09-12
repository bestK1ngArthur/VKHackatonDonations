//
//  TargetDonationViewController.swift
//  VKHackathonDonations
//
//  Created by admin on 11.09.2020.
//  Copyright © 2020 Tech Birds. All rights reserved.
//

import UIKit

class TargetDonationViewController: UIViewController {
        
        @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
            navigationController?.navigationBar.shadowImage = UIImage()
            navigationController?.navigationBar.isTranslucent = true
            navigationController?.navigationBar.backgroundColor = .clear
            
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
            navigationController?.navigationBar.shadowImage = nil
            navigationController?.navigationBar.backgroundColor = nil
            navigationController?.navigationBar.tintColor = nil
        }
        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }

    extension TargetDonationViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 7
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell"), indexPath.row == 6 {
                return cell
            }
            if let cell = tableView.dequeueReusableCell(withIdentifier: "addPhoto") as? AddPhotoTableViewCell, indexPath.row == 0 {
                return cell
            } else if let cell = tableView.dequeueReusableCell(withIdentifier: "textFiled") as? TextFieldTableViewCell {
                    switch indexPath.row {
                    case 1:
                        cell.titleLabel.text = "Название сбора"
                        cell.textView.text = "Название сбора"
                    case 2:
                        cell.titleLabel.text = "Сумма"
                        cell.textView.text = "Сколько нужно собрать?"
                    case 3:
                        cell.titleLabel.text = "Цель"
                        cell.textView.text = "Например, лечвение человека"
                    case 4:
                        cell.titleLabel.text = "Описание"
                        cell.textView.text = "На что пойдут деньги и как они кому-то помогут?"
                    case 5:
                        cell.titleLabel.text = "Куда получать деньги"
                        cell.textView.text = "Счет VK Pay"
                        cell.textView.textColor = .black
                        cell.arrowImage.isHidden = false
                    default: break
                    }
                    
                    return cell
            }
            
            return UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if indexPath.row == 0 {

            }
        }
        
    }

    extension TargetDonationViewController: UITableViewDelegate {
        
    }
