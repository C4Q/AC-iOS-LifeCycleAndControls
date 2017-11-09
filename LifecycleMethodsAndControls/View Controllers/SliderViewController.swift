//
//  SliderViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    var currentVal: Double = 0.5 {
        didSet {
            self.view.backgroundColor = UIColor(displayP3Red: 0.6, green: 0.2, blue: CGFloat(currentVal), alpha: 1)
        }
    }
    
    @IBOutlet weak var sliderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        self.currentVal = Double(sender.value)
    }

}
