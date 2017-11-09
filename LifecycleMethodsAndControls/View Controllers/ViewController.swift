//
//  ViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    let colorName = "blue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Root: viewDidLoad")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("Root: viewWillLayoutSubviews")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Root: viewWillAppear, animated: \(animated)")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Root: viewDidAppear, animated: \(animated)")
    }
    
    //App is on screen and running
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Root: viewWillDisappear; animated: \(animated)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Root: viewDidDisappear; animated: \(animated)")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            destination.passedInColor = self.colorName
        }
    }
}

