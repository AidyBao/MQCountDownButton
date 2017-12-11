//
//  ViewController.swift
//  MQCountDownButton
//
//  Created by 120v on 2017/12/11.
//  Copyright © 2017年 MQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var getCodeBtn: MQCountDownButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getCodeBtn.maxCount = 60
        self.getCodeBtn.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

