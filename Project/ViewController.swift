//
//  ViewController.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-05.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButtonPress(sender: UIButton) {
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.startButton.alpha -= 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1, delay: 0, options: [], animations: {self.startButton.alpha = 1}, completion: nil)
    }
}

