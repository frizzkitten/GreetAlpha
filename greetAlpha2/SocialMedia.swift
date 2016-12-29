//
//  SocialMedia.swift
//  greetAlpha2
//
//  Created by Raizel Lieberman on 12/15/16.
//  Copyright © 2016 MyTech. All rights reserved.
//

import UIKit

var accountNames : SocialMedia = SocialMedia()

class SocialMedia: NSObject {
    
    //Usernames will be put in a specific order to correspond to the storyboard. If a user does not use one or more social media platforms, it will be left as an empty string.
    //[Facebook, Snapchat, Instagram, Twitter, Skype, LinkedIn]
    var mediaAccounts = ["","","","","",""]
    
}
