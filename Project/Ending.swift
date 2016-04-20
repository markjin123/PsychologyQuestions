//
//  Ending.swift
//  36Questions
//
//  Created by Mark Jin on 4/20/16.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Ending: UIViewController {

    @IBOutlet weak var Restart: UIButton!
    
    @IBOutlet weak var Created: UILabel!
    @IBOutlet weak var Creator: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(red: CGFloat(255)/255, green: CGFloat(153)/255, blue: CGFloat(204)/255, alpha: CGFloat(1))
        Restart.center.x = self.view.bounds.width/2
        Creator.sizeToFit()
        Created.sizeToFit()
        Creator.center.x = self.view.bounds.width/2
        Created.center.x = self.view.bounds.width/2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
