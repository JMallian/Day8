//
//  CreateNumbersViewController.swift
//  Day8
//
//  Created by Jessica Mallian on 4/23/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import UIKit 

class CreateNumbersViewController: UIViewController {
    @IBOutlet var displayLabel: UILabel!
    
    @IBAction func addNumberButtonPressed(_ sender: Any) {
    }
    
    @IBAction func goBackButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
