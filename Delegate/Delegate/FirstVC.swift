//
//  ViewController.swift
//  Delegate
//
//  Created by DuyCuong on 9/5/19.
//  Copyright © 2019 DuyCuong. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, SecondVCDelegate {
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func sentToFirstVC(data: String?) {
        firstLabel.text = data
    }

    @IBAction func nextButton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondID") as! SecondVC
        secondVC.delegate = self
        present(secondVC, animated: true, completion: nil)
    }
    
}

