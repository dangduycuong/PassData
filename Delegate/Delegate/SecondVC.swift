//
//  SecondVC.swift
//  Delegate
//
//  Created by DuyCuong on 9/5/19.
//  Copyright © 2019 DuyCuong. All rights reserved.
//

import UIKit

protocol SecondVCDelegate: class {
    func sentToFirstVC(data: String?)
}

class SecondVC: UIViewController {
    
    @IBOutlet weak var secondTextField: UITextField!
    
    weak var delegate: SecondVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sentButton(_ sender: Any) {
        if secondTextField != nil {
            delegate?.sentToFirstVC(data: secondTextField.text)
            dismiss(animated: true, completion: nil)
        }
    }
}
