//
//  Question36.swift
//  36Questions
//
//  Created by Mark Jin on 4/18/16.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Question36: UIViewController {
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var Question36: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0, green: 153, blue: 204, alpha: 1.0)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
