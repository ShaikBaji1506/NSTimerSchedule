//
//  ThirdVC.swift
//  TimerDemo
//
//  Created by Shaik Baji on 21/01/20.
//  Copyright © 2020 smartitventures.com. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnTapped(_ sender: UIButton)
    {
    self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnRootTapped(_ sender: UIButton)
    {
    self.navigationController?.popToRootViewController(animated: true)
    }
}
