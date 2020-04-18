//
//  NextViewController.swift
//  coordinators
//
//  Created by Jamal alayq on 4/11/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    weak var coordinator: NextCoordinator?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Next"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function, "\(name ?? "No name passed") welcome to screen.",
            (#file).components(separatedBy: "/").last ?? "Next screen")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.destruct()
    }
    
}
