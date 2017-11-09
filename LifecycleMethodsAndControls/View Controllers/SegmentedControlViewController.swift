//
//  SegmentedControlViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class SegmentedControlViewController: UIViewController {
    
    var currentSegmentIndex: Int = 1 {
        didSet {
            self.textLabel.text = "The " + self.segmentedControl.titleForSegment(at: currentSegmentIndex)! + " segment is selected"
        }
    }
    
    override func viewDidLoad() {
        self.currentSegmentIndex = segmentedControl.selectedSegmentIndex
    }
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        self.currentSegmentIndex = sender.selectedSegmentIndex
    }
}

