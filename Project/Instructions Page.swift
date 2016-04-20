//
//  Instructions Page.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-07.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Instructions_Page: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelParagraph: UILabel!
    var blink = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: CGFloat(128)/255, green: CGFloat(128), blue: CGFloat(255), alpha: CGFloat(1))
        labelTitle.text = "Touch Anywhere To Coutinue"
        labelParagraph.text = "Grab a friend, lover, partner or family member and start answering some question. Each individual will be given 1 minute to answer each of the questions before moving on."
        
        labelParagraph.sizeToFit()
        labelParagraph.center.x = self.view.bounds.width/2
        
        labelTitle.sizeToFit()
        labelTitle.center.x = self.view.bounds.width/2
        labelTitle.alpha -= 1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.labelTitle.alpha -= 1
        self.labelParagraph.alpha -= 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.labelParagraph.alpha = 1}, completion: nil)
        NSTimer.scheduledTimerWithTimeInterval(0.50, target: self, selector: "TouchAny", userInfo: nil, repeats: true)
        
    }
    func TouchAny(){
        if blink{
            UIView.animateWithDuration(0.50, delay: 0, options: [], animations: {self.labelTitle.alpha += 1}, completion: nil)
            labelTitle.alpha = 1
            blink = false
        }else{
            UIView.animateWithDuration(0.50, delay: 0, options: [], animations: {self.labelTitle.alpha -= 1}, completion: nil)
            labelTitle.alpha = 0
            blink = true
        }
    }

}
