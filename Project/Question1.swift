//
//  Question1.swift
//  Project
//
//  Created by sisi on 2016-01-09.
//  Copyright © 2016 Jacqueline Jia. All rights reserved.
//

import UIKit

class Question1: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    var time:Int = 120
    @IBOutlet weak var Questions1: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var countDownLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        name.text = player1Name
       // NSObject.performSelector(Selector("countDownTimerInit"), withObject: self, afterDelay: 1.0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        name.center.x -= view.bounds.width
        Questions1.alpha -= 1
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var activeCounter = NSTimer.scheduledTimerWithTimeInterval(2.9, target: self, selector: ("timerInit:"), userInfo: nil, repeats: false)
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.name.center.x += self.view.bounds.width}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 2, options: [], animations: {self.name.center.x -= self.view.bounds.width}, completion: nil)
        UIView.animateWithDuration(0.3, delay: 2.5, options: [], animations: {self.Questions1.alpha += 1}, completion: nil)
        

    }
    func timerInit(timer:NSTimer){
        var keepCount = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("updateTimer:"), userInfo: nil, repeats: true)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ2"){
            let svc = segue.destinationViewController as! Question2;
            svc.player1Name = self.player1Name
            svc.player2Name = self.player2Name
        }
    }

    func updateTimer(timer:NSTimer){
        if(time > 0){
            countDownLabel.text = String(time--)
        }
        else{
            //when reaches 0
            countDownLabel.alpha -= 1
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
