//
//  Question36.swift
//  36Questions
//
//  Created by Mark Jin on 4/18/16.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit
import AudioToolbox

class Question36: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    var time:Int = 2
    var player1 = true
    var player2 = true
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var Question36: UILabel!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0, green: 153, blue: 204, alpha: 1.0)
        Question36.sizeToFit()
        name.text = player1Name
        name2.text = player2Name
        name.sizeToFit()
        name2.sizeToFit()
        Question36.lineBreakMode = NSLineBreakMode.ByWordWrapping
        Question36.center.x = self.view.bounds.width/2
        timesUp.textColor = UIColor(red: CGFloat(255), green: CGFloat(0), blue: CGFloat(0), alpha: 1.0)
        countDownLabel.textColor = UIColor(red: CGFloat(255), green: CGFloat(0), blue: CGFloat(0), alpha: 1.0)
        countDownLabel.text = "60"
        countDownLabel.center.x = self.view.bounds.width/2
        countDownLabel.alpha = 0
        name.center.x = self.view.bounds.width/2
        name2.center.x = self.view.bounds.width/2
        timesUp.center.x = self.view.bounds.width/2
        timesUp.center.x -= self.view.bounds.width
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //we first need to move the player1 label out of the screen so we can move it back in
        name.center.x -= view.bounds.width
        name2.center.x -= view.bounds.width
        
        //this is to make the alpha of the Question1 = 0 so we can improve its alpha back to 1 for the animation
        Question36.alpha -= 1
        countDownLabel.alpha -= 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        _ = NSTimer.scheduledTimerWithTimeInterval(2.8, target: self, selector: ("timerInit:"), userInfo: nil, repeats: false)
        UIView.animateWithDuration(0.5,delay:2.8,options:[], animations:{self.countDownLabel.alpha += 1}, completion: nil)
        //the follow two parts is how the player1 label is animated
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.name.center.x += self.view.bounds.width}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 2, options: [], animations: {self.name.center.x += self.view.bounds.width}, completion: nil)
        
        
        //this line is how the we animate the alpha of the question
        UIView.animateWithDuration(0.3, delay: 2.5, options: [], animations: {self.Question36.alpha += 1}, completion: nil)
        UIView.animateWithDuration(0.2, delay: 2.5, options: [], animations: {self.countDownLabel.alpha += 1}, completion: nil)
        
    }
    
    func timerInit(timer:NSTimer){
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("updateTimer:"), userInfo: nil, repeats: true)
    }
    
    func updateTimer(timer:NSTimer){
        if player1{
            if(time >= 0){
                countDownLabel.text = String(time--)
            }
            else{
                //when reaches 0
                countDownLabel.alpha -= 0
                player1 = false
                UIView.animateWithDuration(0.5, delay: 0.2, options: [], animations: {self.timesUp.center.x += self.view.bounds.width}, completion: nil)
                UIView.animateWithDuration(0.2, delay: 0, options: [], animations: {self.countDownLabel.alpha -= 1}, completion: nil)
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                let delay = 2.0 * Double(NSEC_PER_SEC)
                let Dtime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                dispatch_after(Dtime, dispatch_get_main_queue()) {
                    self.loadPlayer2()
                }
            }
        }
    }
    
    func loadPlayer2(){
        name.alpha = 0
        time = 2
        countDownLabel.text = String(time)
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.timesUp.center.x += self.view.bounds.width}, completion: nil)
        UIView.animateWithDuration(0.5,delay:1.0,options:[],animations:{self.name2.center.x += self.view.bounds.width},completion:nil)
        UIView.animateWithDuration(0.5,delay:3,options:[], animations:{self.name2.center.x += self.view.bounds.width}, completion:nil)
        NSTimer.scheduledTimerWithTimeInterval(2.1, target: self, selector: ("timer2Init"), userInfo: nil, repeats: false)
    }
    
    func timer2Init(){
        self.timesUp.center.x = -self.view.bounds.width/2
        UIView.animateWithDuration(0.2, delay: 0, options: [], animations: {self.countDownLabel.alpha += 1}, completion: nil)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("timerPlayer2"), userInfo: nil, repeats: true)
    }
    
    func timerPlayer2(){
        if player2{
            if time >= 0 {
                countDownLabel.text = String(time--)
            }else{
                countDownLabel.alpha = 0
                UIView.animateWithDuration(0.5, delay: 0.2, options: [], animations: {self.timesUp.center.x += self.view.bounds.width}, completion: nil)
                UIView.animateWithDuration(0.5, delay: 2.7, options: [], animations: {self.timesUp.center.x += self.view.bounds.width}, completion: nil)
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                player2 = false
            }
        }
    }
    
}
