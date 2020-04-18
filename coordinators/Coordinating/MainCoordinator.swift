//
//  MainCoordinator.swift
//  coordinators
//
//  Created by Jamal alayq on 4/11/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var children = [Coordinator]() {
        didSet {
            print(#function, children.count, "Number of coordinators...")
        }
    }
    var navigator: UINavigationController

    init(navigator: UINavigationController) {
        self.navigator = navigator
    }

    deinit {
        children.removeAll()
    }

    func start() {        
        let vc = ViewController.instantiate(from: .main)
        vc.coordinator = self
        navigator.pushViewController(vc, animated: false)
    }

    func next(with name: String?) {
        let child = NextCoordinator(navigator: navigator)
        children.append(child)
        child.parent = self
        child.name = name
        child.start()
    }

    func pervious() {
        let child = PrevCoordinator(navigator: navigator)
        children.append(child)
        child.parent = self
        child.start()
    }

}
