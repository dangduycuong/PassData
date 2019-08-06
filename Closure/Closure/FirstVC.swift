//
//  ViewController.swift
//  Closure
//
//  Created by TemP on 8/6/19.
//  Copyright © 2019 TemP. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstImageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = ""
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondVC
        secondVC.myClosure = { titleImage, photo in
            self.firstLabel.text = titleImage
            self.firstImageview.image = photo
        }
    }
}

