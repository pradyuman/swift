//
//  ViewController.swift
//  Stopwatch
//
//  Created by Pradyuman Vig on 3/19/15.
//  Copyright (c) 2015 Asuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   var timer = NSTimer()
   
   var count = 0
   
   func updateTime(){
      
      count++
      
      display.text = "\(count)"
   }
   
   @IBAction func pause(sender: AnyObject) {
      timer.invalidate()
   }
   
   @IBOutlet var display: UILabel!
   
   @IBAction func start(sender: AnyObject) {
      timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
   }
   
   @IBAction func stop(sender: AnyObject) {
      timer.invalidate()
      
      count = 0
      
      display.text = "0"
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

