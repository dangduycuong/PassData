//
//  SecondViewController.swift
//  Closure
//
//  Created by TemP on 8/6/19.
//  Copyright © 2019 TemP. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    var myClosure: ((_ titleImage: String, _ photo: UIImage) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        secondImageView.layer.cornerRadius = secondImageView.bounds.width / 2
    }
    
    
    //MARK: - Action
    @IBAction func loadImageFromLibrary(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        secondImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openCamera(_ sender: Any) {
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let test = secondTextField.text == "" || secondImageView.image == nil
        if test  {
            print(test)
            let alert = UIAlertController(title: "Hãy đầy đủ thông tin!", message: "Bạn nhập sai nội dung.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default) { action in })
            self.present(alert, animated: true, completion: nil)
        } else {
            myClosure?(secondTextField.text!, secondImageView.image!)
            dismiss(animated: true, completion: nil)
        }
        
    }
}
