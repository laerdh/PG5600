//
//  ViewController.swift
//  Exercise9
//
//  Created by Lars Dahl on 23.09.2016.
//  Copyright © 2016 Lars Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let aTitle = "PG5600 - iOS Programming"
    let aMessage = "This is a test"
    let aBtn = "OK"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Alert View
        let alertController = UIAlertController(title: aTitle, message: aMessage, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: aBtn, style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

