//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var letterHolder: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var threeLetterBox: UITextView!
    @IBOutlet weak var fourLetterBox: UITextView!
    @IBOutlet weak var fiveLetterBox: UITextView!
    @IBOutlet weak var sixLetterBox: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextField.delegate = self
    }
    var data = WordData()
//    var model = TextTwistModel()
    

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        guard let text = textField.text else {
            return true
        }
        messageLabel.text = "\(text) is not a valid input"
        messageLabel.isHidden = false
        return true
    }
    

}

