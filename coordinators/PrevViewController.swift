//
//  PrevViewController.swift
//  coordinators
//
//  Created by Jamal alayq on 4/11/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import UIKit

class PrevViewController: UIViewController {    
    weak var coordinator: PrevCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.destruct()
    }
}
