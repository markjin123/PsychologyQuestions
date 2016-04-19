//
//  Question2.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-13.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Question2: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var Question2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red: 153, green: 51, blue: 255, alpha: 1.0)
        Question2.sizeToFit()
        name.text = player2Name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //we first need to move the player1 label out of the screen so we can move it back in
//        name.center.x -= view.bounds.width
        
        //this is to make the alpha of the Question1 = 0 so we can improve its alpha back to 1 for the animation
        Question2.alpha -= 0
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        _ = NSTimer.scheduledTimerWithTimeInterval(2.8, target: self, selector: ("timerInit:"), userInfo: nil, repeats: false)
 
        //the follow two parts is how the player1 label is animated
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.name.center.x += self.view.bounds.width}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 2, options: [], animations: {self.name.center.x -= self.view.bounds.width}, completion: nil)
        
        
        //this line is how the we animate the alpha of the question
        UIView.animateWithDuration(0.3, delay: 1.5, options: [], animations: {self.Question2.alpha += 1}, completion: nil)
        
        //after the timer is up it will go to the function enableTouch which enables the use to touch the screen
        //this function is how you delay things and it this as its parameters
        
        //NSTimer.scheduledTimerWithTimeInterval("how long it is delayed", target: self, selector: "the function that you hope to run when the delay is done", userInfo: nil, repeats: "true if you want to repeat and delay the same amount of time again, false if you don't"))
        //var activePause = NSTimer.scheduledTimerWithTimeInterval(123, target: self, selector: ("enableTouch"), userInfo: nil, repeats: false)
    }
    
    
    func timerInit(timer:NSTimer){
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("updateTimer:"), userInfo: nil, repeats: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ3"){
            let svc = segue.destinationViewController as! Question3;
            svc.player1Name = self.player1Name
            svc.player2Name = self.player2Name
        }
    }

}
