//
//  ViewController.swift
//  Intro6
//
//  Created by SwiftiCode on 14/7/16.
//  Copyright © 2016 SwiftiCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: UITextFieldDelegate
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        myLabel.text = textField.text
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
}

