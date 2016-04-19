//
//  Question32.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-27.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Question32: UIViewController {

    @IBOutlet weak var Question32: UILabel!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 255, green: 153, blue: 102, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
