//
//  ThirdViewController.swift
//  greetAlpha2
//
//  Created by Raizel Lieberman on 12/13/16.
//  Copyright © 2016 MyTech. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var LoopsToProfileSwipe: UISwipeGestureRecognizer!
    
    @IBOutlet weak var LoopsToProfileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let selectedColor   = UIColor(red: 33.0/255.0, green: 239.0/255.0, blue: 225.0/255.0, alpha: 1.0)
        let unselectedColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        //teal: red: 33.0/255.0, green: 239.0/255.0, blue: 225.0/255.0, alpha: 1.0
        //purple: red: 198.0/255.0, green: 68.0/255.0, blue: 226.0/255.0, alpha: 1.0
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: unselectedColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: selectedColor], for: .selected)
        
        UITabBar.appearance().tintColor = selectedColor
        UITabBar.appearance().unselectedItemTintColor = unselectedColor
        UITabBar.appearance().barTintColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
