//
//  Player 1.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-07.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Player1: UIViewController {
    
    @IBOutlet weak var textFieldEnterName: UITextField!
    
    @IBOutlet weak var labelPlayer1: UILabel!
    
    @IBOutlet weak var buttonDone: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "removeKeyboard")
        textFieldEnterName.placeholder = "Enter Name Here"
        
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func removeKeyboard(){
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.textFieldEnterName.alpha -= 1
        self.labelPlayer1.alpha -= 1
        self.buttonDone.alpha -= 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {self.textFieldEnterName.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.labelPlayer1.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 1, options: [], animations: {self.buttonDone.alpha = 1}, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChange"){
            let svc = segue.destinationViewController as! Player2;
            svc.player1Name = textFieldEnterName.text!
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
