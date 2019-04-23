//
//  ViewController.swift
//  Day8
//
//  Created by Jessica Mallian on 4/23/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import UIKit

class DisplayNumbersViewController: UIViewController {

    @IBOutlet var displayLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToNumbersButtonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CreateNumbersViewController") as! CreateNumbersViewController
        present(vc, animated: true, completion: nil)
    }
}

