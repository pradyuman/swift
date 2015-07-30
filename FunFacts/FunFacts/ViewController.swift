//
//  ViewController.swift
//  FunFacts
//
//  Created by Pradyuman Vig on 7/25/15.
//  Copyright (c) 2015 Asuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var factLabel: UILabel!
   
   let factBook = FactBook()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      factLabel.text = factBook.randomFact()
      
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   @IBAction func showFact() {
      factLabel.text = factBook.randomFact()
   }

}

