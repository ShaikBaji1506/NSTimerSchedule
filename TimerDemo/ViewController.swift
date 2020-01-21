//
//  ViewController.swift
//  TimerDemo
//
//  Created by Shaik Baji on 21/01/20.
//  Copyright © 2020 smartitventures.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timerObj = Timer()
    var timeTotal :Int? = 300
    var remainingTime:Int?
    
    @IBOutlet weak var lblTimer: UILabel!
    
    override func viewWillAppear(_ animated: Bool)
    {
        startTimer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
     //MARK:-Pragma Duration Timer
    func startTimer()
    {
        timerObj = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        timerObj.tolerance = 0.1 //Used for pausing the time rather than deallocating the time
    }
    
    @objc func updateTimer()
    {
        
        if timeTotal != 0
        {
            self.timeTotal! = self.timeTotal! - 1
            lblTimer.text = "\(timeFormatted(Int(timeTotal ?? 0)))"
        }
            
        else
        {
            timerObj.invalidate()
        }
    }
    func timeFormatted(_ totalSeconds: Int) -> String
    {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        let hours: Int = totalSeconds / 3600
        return String(format: "%02d:%02d:%02d", hours,minutes, seconds)
    }
    
    

    @IBAction func btnTapped(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier:"SecondVC") as! SecondVC
        timerObj.invalidate()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

