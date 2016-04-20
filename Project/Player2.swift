//
//  Player 2.swift
//  Project
//
//  Created by PsychologyQuestions on 2016-01-07.
//  Copyright © 2016 PsychologyQuestions. All rights reserved.
//

import UIKit

class Player2: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var player1Name:String = ""
    var player2Name:String = ""
    var player1image: UIImage!
    var blink = true
    @IBOutlet weak var textFieldEnterName: UITextField!
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var ProfilePicture: UILabel!
    @IBOutlet weak var PhotoLibrary: UIButton!
    @IBOutlet weak var DisplayPhoto: UIImageView!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var TakePhoto: UIButton!
    @IBAction func PhotoLibrary(sender: AnyObject) {
        let pick = UIImagePickerController()
        pick.delegate = self
        pick.sourceType = .PhotoLibrary
        presentViewController(pick, animated: true, completion: nil)
        
    }
    @IBAction func TakePhoto(sender: AnyObject) {
        let pick = UIImagePickerController()
        pick.delegate = self
        pick.sourceType = .Camera
        presentViewController(pick, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: CGFloat(230)/255, green: CGFloat(115)/255, blue: CGFloat(0)/255, alpha: CGFloat(1))
        // Do any additional setup after loading the view.
        ProfilePicture.sizeToFit()
        nextQuestion.alpha = 0
        nextQuestion.enabled = false
        DisplayPhoto.center.x = self.view.bounds.width/2
        ProfilePicture.center.x = self.view.bounds.width/2
        TakePhoto.center.x = self.view.bounds.width/4
        PhotoLibrary.center.x = self.view.bounds.width*3/4
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "removeKeyboard")
        textFieldEnterName.placeholder = "Enter Name Here"
        nextQuestion.center.x = CGFloat(Int(self.view.bounds.width) - 30)
        nextQuestion.center.y = CGFloat(Int(self.view.bounds.height) - 50)
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
        self.labelPlayer2.alpha -= 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {self.textFieldEnterName.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: {self.labelPlayer2.alpha = 1}, completion: nil)
        UIView.animateWithDuration(0.5, delay: 1, options: [], animations: {self.nextQuestion.alpha = 1}, completion: nil)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "NextQuestion", userInfo: nil, repeats: false)
        
    }
    func NextQuestion(){
        self.nextQuestion.enabled = true
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueChangeQ1"){
            let svc = segue.destinationViewController as! Question1;
            svc.player1Name = player1Name
            svc.player2Name = textFieldEnterName.text!
            svc.player1image = self.player1image
            svc.player2image = self.DisplayPhoto.image
        }
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        DisplayPhoto.image = image
        dismissViewControllerAnimated(true, completion: nil)
    }
}
