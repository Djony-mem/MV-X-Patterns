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
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }

    @IBAction func showGreetingPressed() {
        viewModel.showGreeting()
    }
    
}

