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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 102, green: 102, blue: 255, alpha: 1)
        labelTitle.text = "Instructions"
        labelParagraph.text = "Grab a friend, lover, partner or family member and start answering some question. Each individual will get 1 minute to answer each of the questions before moving on."

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
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.labelTitle.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {self.labelParagraph.alpha = 1}, completion: nil)
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
