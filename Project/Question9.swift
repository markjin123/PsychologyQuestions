//
//  Question9.swift
//  Project
//
//  Created by sisi on 2016-01-13.
//  Copyright © 2016 Jacqueline Jia. All rights reserved.
//

import UIKit

class Question9: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChange10"){
            let svc = segue.destinationViewController as! Question10;
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
