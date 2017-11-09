//
//  DetailViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var passedInColor: String = ""
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorLabel.text = passedInColor
        print("Detail: viewDidLoad")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("Detail: viewWillLayoutSubviews")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Detail: viewWillAppear, animated: \(animated)")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Detail: viewDidAppear, animated: \(animated)")
    }
    
    //App is on screen and running
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Detail: viewWillDisappear; animated: \(animated)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Detail: viewDidDisappear; animated: \(animated)")
    }

}
