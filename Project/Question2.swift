//
//  Question2.swift
//  Project
//
//  Created by sisi on 2016-01-13.
//  Copyright © 2016 Jacqueline Jia. All rights reserved.
//

import UIKit

class Question2: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var nextQuestion: UIButton!
    
    
  //`  @IBOutlet weak var Questions2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        question2.alpha -= 0
    }
/*
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        _ = NSTimer.scheduledTimerWithTimeInterval(2.8, target: self, selector: ("timerInit:"), userInfo: nil, repeats: false)
 
        //the follow two parts is how the player1 label is animated
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.name.center.x += self.view.bounds.width}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 2, options: [], animations: {self.name.center.x -= self.view.bounds.width}, completion: nil)
        
        
        //this line is how the we animate the alpha of the question
        UIView.animateWithDuration(0.3, delay: 1.5, options: [], animations: {self.question2.alpha += 1}, completion: nil)
        
        //after the timer is up it will go to the function enableTouch which enables the use to touch the screen
        //this function is how you delay things and it this as its parameters
        
        //NSTimer.scheduledTimerWithTimeInterval("how long it is delayed", target: self, selector: "the function that you hope to run when the delay is done", userInfo: nil, repeats: "true if you want to repeat and delay the same amount of time again, false if you don't"))
        //var activePause = NSTimer.scheduledTimerWithTimeInterval(123, target: self, selector: ("enableTouch"), userInfo: nil, repeats: false)
    }

    func enableTouch(){
        //this line says that everytime someone touches the screen, it will go to the function nextQuestion
        var humanTap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "nextQuestion")
    }
    
    
    func timerInit(timer:NSTimer){
        var keepCount = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("updateTimer:"), userInfo: nil, repeats: true)
    }
*/
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ3"){
            let svc = segue.destinationViewController as! Question3;
            svc.player1Name = self.player1Name
            svc.player2Name = self.player2Name
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
