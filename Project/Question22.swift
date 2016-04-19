//
//  Question22.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-13.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Question22: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var timesUp: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var Question22: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red: 0, green: 204, blue: 153, alpha: 1.0)
        name.text = player2Name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ23"){
            let svc = segue.destinationViewController as! Question23;
            svc.player1Name = player1Name
            svc.player2Name = player2Name
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
