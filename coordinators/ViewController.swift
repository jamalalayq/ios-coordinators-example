//
//  ViewController.swift
//  coordinators
//
//  Created by Jamal alayq on 4/11/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Controller {

    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home" 
    }

    @IBAction private func nextOnTap(_ sender: UIButton) {
        // coordinator?.next()
        coordinator?.show(NextCoordinator.self)
    }
}

