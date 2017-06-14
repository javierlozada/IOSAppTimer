//
//  ViewController.swift
//  IOSAppTimer
//
//  Created by MiCalisoft - IOS Team No.1  on 6/14/17.
//  Copyright © 2017 MiCalisoft - IOS Team No.1 . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showTimer: UILabel!
    
    
    
    weak var timer: Timer?
    var startTime: Double = 0
    
    var time: Double = 0


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func startButton(_ sender: Any) {
        startTime = Date().timeIntervalSinceReferenceDate
        timer  =  Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(action(timer:)), userInfo: nil, repeats: true)
    }
    
    
    
    @IBAction func pauseButton(_ sender: Any){
        timer?.invalidate()
    }
    
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        timer?.invalidate()
        time = 0
        showTimer.text = ("0")
    }
    
    
    func action(timer : Timer){
        time = Date().timeIntervalSinceReferenceDate - startTime
        
        let timeString = String(format: "%.2f", time)
        
        showTimer.text = timeString
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
  

}

