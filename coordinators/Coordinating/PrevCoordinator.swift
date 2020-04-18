//
//  PrevCoordinator.swift
//  coordinators
//
//  Created by MAC on 4/18/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import UIKit

final class PrevCoordinator: Child {
    weak var parent: Coordinator?
    var children = [Coordinator]()
    var navigator: UINavigationController
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let screen = PrevViewController.instantiate(from: .main)
        screen.coordinator = self
        navigator.pushViewController(screen, animated: true)
    }
    
    func present() {
        let screen = PrevViewController.instantiate(from: .main)
        screen.coordinator = self
        screen.present(screen, animated: true)
    }
    
}
