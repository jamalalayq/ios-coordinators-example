//
//  NextCoordinator.swift
//  coordinators
//
//  Created by Jamal alayq on 4/13/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import UIKit

final class NextCoordinator: Child {
    weak var parent: Coordinator?
    var children =  [Coordinator]()
    var navigator: UINavigationController
    var name: String?

    init(navigator: UINavigationController) {
        self.navigator = navigator
    }

    func start() {
        let screen = NextViewController.instantiate(from: .main)
        screen.coordinator = self
        screen.name = name
        navigator.pushViewController(screen, animated: true)
    }
    
    func present() {
        let screen = NextViewController.instantiate(from: .main)
        screen.coordinator = self
        screen.name = name
        navigator.present(screen, animated: true)
    }

}
