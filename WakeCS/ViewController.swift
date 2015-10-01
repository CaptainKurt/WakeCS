//
//  ViewController.swift
//  WakeCS
//
//  Created by SDG2 on 9/28/15.
//  Copyright (c) 2015 ST. All rights reserved.
//

import UIKit
import MFSideMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupMenuBarButtonItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupMenuBarButtonItems(){
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Menu", style: UIBarButtonItemStyle.Bordered, target: self, action: "rightSideMenuButtonPressed:")
        
        if self.menuContainerViewController.menuState.value == MFSideMenuStateClosed.value {
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Bordered, target: self, action: "backButtonPressed:")
        } else {
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: UIBarButtonItemStyle.Bordered, target: self, action: "leftSideMenuButtonPressed:")
        }
    }
    
    

}

