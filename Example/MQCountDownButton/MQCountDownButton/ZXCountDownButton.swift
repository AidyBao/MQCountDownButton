//
//  MQCountDownButton.swift
//  MQCountDownButton
//
//  Created by AidyBao on 2017/8/7.
//  Copyright © 2017年 AidyBao. All rights reserved.
//

import UIKit

class MQCountDownButton: UIButton {

    fileprivate var timer:Timer?
    var maxCount:Int = 60
    var idleTitle:String = "获取验证码"
    fileprivate var downCount:Int = 0
    
    var currentCount:Int {
        get {
            return downCount
        }
    }
    var isCouting = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.uiconfig()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.uiconfig()
    }
    
    func uiconfig() {
        self.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        self.setTitle(idleTitle, for: .normal)
        self.setTitle(idleTitle, for: .disabled)
        self.setTitleColor(UIColor.blue, for: .normal)
        self.setTitleColor(UIColor.lightGray, for: .disabled)
    }
    
    func start() {
        downCount = maxCount
        reset()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownAction), userInfo: nil, repeats: true)
        RunLoop.current.add(timer!, forMode: .commonModes)
        timer?.fireDate = Date()
        isCouting = true
    }
    
    func reset() {
        if let timer = timer {
            timer.invalidate()
            self.timer = nil
        }
        self.setTitle(idleTitle, for: .normal)
        self.setTitle(idleTitle, for: .disabled)
        self.titleLabel?.textColor = UIColor.blue
        self.isEnabled = true
        isCouting = false
    }
    
    @objc fileprivate func countDownAction() {
        downCount -= 1
        if downCount <= 0 {
            downCount = 0
            reset()
        } else {
            self.isEnabled = false
            self.setTitle("\(downCount)s后重试", for: .disabled)
        }
    }
    
    override func willMove(toWindow newWindow: UIWindow?) {
        if newWindow == nil {
            self.reset()
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
