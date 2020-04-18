//
//  NextScreen.swift
//  coordinators
//
//  Created by MAC on 4/18/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import UIKit

final class NextScreen: UIViewController, Controller {
    
    var name: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Hello, \(name ?? "No name!").")
    }

}
