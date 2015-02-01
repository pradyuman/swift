//
//  ViewController.swift
//  Cat Year Converter
//
//  Created by Pradyuman Vig on 2/1/15.
//  Copyright (c) 2015 Asuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var ageOutputField: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var enteredAge = (inputField.text as NSString).floatValue
        
        var calculatedAge = enteredAge / 7
        
        ageOutputField.text = "You are \(calculatedAge) in cat years"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

