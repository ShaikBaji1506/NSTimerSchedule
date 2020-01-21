//
//  SecondVC.swift
//  TimerDemo
//
//  Created by Shaik Baji on 21/01/20.
//  Copyright © 2020 smartitventures.com. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnTapped(_ sender: UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func btnTappedGo(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier:"ThirdVC") as! ThirdVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
