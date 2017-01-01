//
//  SecondViewController.swift
//  greetAlpha2
//
//  Created by Raizel Lieberman on 12/13/16.
//  Copyright © 2016 MyTech. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var ProfileToMainSwipe: UISwipeGestureRecognizer!
    
    @IBOutlet weak var ProfileToMainButton: UIButton!
    
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var snapchatAccount: UITextField!
    @IBOutlet weak var instagramAccount: UITextField!
    @IBOutlet weak var twitterAccount: UITextField!
    @IBOutlet weak var skypeAccount: UITextField!
    @IBOutlet weak var linkedinAccount: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //teal: red: 33.0/255.0, green: 239.0/255.0, blue: 225.0/255.0, alpha: 1.0
        //purple: red: 198.0/255.0, green: 68.0/255.0, blue: 226.0/255.0, alpha: 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addUsername(sender: UITextField)
    {
        accountNames.setValue(1, forKey: snapchatAccount.text!)
        accountNames.setValue(2, forKey: instagramAccount.text!)
        accountNames.setValue(3, forKey: twitterAccount.text!)
        accountNames.setValue(4, forKey: skypeAccount.text!)
        accountNames.setValue(5, forKey: linkedinAccount.text!)
        self.view.endEditing(true)
    }
    
    //iOS Touch Functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        accountNames.setValue(1, forKey: snapchatAccount.text!)
        accountNames.setValue(2, forKey: instagramAccount.text!)
        accountNames.setValue(3, forKey: twitterAccount.text!)
        accountNames.setValue(4, forKey: skypeAccount.text!)
        accountNames.setValue(5, forKey: linkedinAccount.text!)
        self.view.endEditing(true)
    }// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    
    //https://forums.developer.apple.com/thread/17801

}

