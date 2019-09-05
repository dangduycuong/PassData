//
//  ViewController.swift
//  NSNotificationCenter-userInfo
//
//  Created by DuyCuong on 9/5/19.
//  Copyright © 2019 DuyCuong. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func receivedData(_ notification: Notification) {
        firstLabel.text = notification.userInfo!["key1"] as? String
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondID") as! SecondVC
        NotificationCenter.default.addObserver(self, selector: #selector(receivedData(_:)), name: .myKey, object: nil)
        present(secondVC, animated: true, completion: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: .myKey, object: nil)
    }
    

}

