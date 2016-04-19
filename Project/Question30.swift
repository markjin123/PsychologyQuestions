//
//  Question30.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-27.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Question30: UIViewController {

    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var Question30: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 255, green: 77, blue: 136, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
