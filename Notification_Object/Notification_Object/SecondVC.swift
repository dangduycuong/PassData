//
//  SecondVC.swift
//  Notification_Object
//
//  Created by DuyCuong on 9/5/19.
//  Copyright © 2019 DuyCuong. All rights reserved.
//

import UIKit

extension Notification.Name {
    static var myKey = Notification.Name(rawValue: "key")
}

class SecondVC: UIViewController {

    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func postButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "key"), object: secondTextField.text)
        dismiss(animated: true, completion: nil)
    }
    

}
