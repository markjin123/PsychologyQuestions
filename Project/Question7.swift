//
//  Question7.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-13.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Question7: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var Question7: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red: 0, green: 230, blue: 184, alpha: 1.0)
        name.text = player1Name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ8"){
            let svc = segue.destinationViewController as! Question8;
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
