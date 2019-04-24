//
//  CreateNumbersViewController.swift
//  Day8
//
//  Created by Jessica Mallian on 4/23/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import UIKit

protocol CreatedRandomNumberDelegate {
    func didCreate(number: Int) -> Bool
}

class CreateNumbersViewController: UIViewController {
    @IBOutlet var displayLabel: UILabel!
    var createdRandomNumberDelegate: CreatedRandomNumberDelegate!
    
    @IBAction func addNumberButtonPressed(_ sender: Any) {
        let randomInt = Int.random(in: 1..<11)
        let numberAdded = createdRandomNumberDelegate.didCreate(number: randomInt)
        if numberAdded {
            displayLabel.text = "Number \(randomInt) was added."
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func goBackButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
