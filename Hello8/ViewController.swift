//
//  ViewController.swift
//  Hello8
//
//  Created by Alexander Kustov on 10/09/14.
//  Copyright (c) 2014 inspiring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var enterNameTextfield: UITextField
    @IBOutlet var enterMessageTextField: UITextField
    @IBOutlet var messageLabel: UILabel
    
    @IBOutlet var sendMailButton: UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

