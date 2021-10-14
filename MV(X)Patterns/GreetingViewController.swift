//
//  ViewController.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 31/08/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func showGreetingPressed() {
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }
    
}

