//
//  Question1.swift
//  Project
//
//  Created by sisi on 2016-01-09.
//  Copyright © 2016 Jacqueline Jia. All rights reserved.
//

import UIKit

class Question1: UIViewController {
    var player1Name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "removeKeyboard")
        textFieldEnterName.placeholder = "Enter Name Here"
        
        view.addGestureRecognizer(tap)
        
        anything.text = player1Name

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
