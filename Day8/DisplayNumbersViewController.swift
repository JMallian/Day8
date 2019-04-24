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
    var theNumbers = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if theNumbers.count > 0 {
            createDisplay()
        }
    }
    
    private func createDisplay() {
        var displayString = "Your numbers are "
        for number in theNumbers {
            displayString += " \(number)"
        }
        displayString += "."
        displayLabel.text = displayString
    }

    @IBAction func goToNumbersButtonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CreateNumbersViewController") as! CreateNumbersViewController
        vc.createdRandomNumberDelegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension DisplayNumbersViewController: CreatedRandomNumberDelegate {
    
    func didCreate(number: Int) -> Bool {
        if theNumbers.contains(number) {
            return false
        } else {
            theNumbers.append(number)
            return true
        }
    }
}

