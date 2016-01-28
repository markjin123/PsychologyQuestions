//
//  Player 2.swift
//  Project
//
//  Created by sisi on 2016-01-07.
//  Copyright © 2016 Jacqueline Jia. All rights reserved.
//

import UIKit

class Player2: UIViewController {
    var player1Name:String = ""
    var player2Name:String = ""
    @IBOutlet weak var anything: UILabel!
    @IBOutlet weak var textFieldEnterName: UITextField!
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var buttonDone: UIButton!
    
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
    
    func removeKeyboard(){
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.textFieldEnterName.alpha -= 1
        self.labelPlayer2.alpha -= 1
        self.buttonDone.alpha -= 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {self.textFieldEnterName.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.labelPlayer2.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 1, options: [], animations: {self.buttonDone.alpha = 1}, completion: nil)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ1"){
            let svc = segue.destinationViewController as! Question1;
            svc.player1Name = player1Name
            svc.player2Name = textFieldEnterName.text!
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
