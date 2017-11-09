//
//  SwitchViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    var switchIsOn: Bool = true {
        didSet {
            switchLabel.text = "The switch is " + (switchIsOn ? "on" : "off")
        }
    }
    
    @IBOutlet weak var simpleSwitch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchIsOn = simpleSwitch.isOn
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        self.switchIsOn = sender.isOn
    }
}
