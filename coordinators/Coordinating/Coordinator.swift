//
//  Coordinator.swift
//  coordinators
//
//  Created by Jamal alayq on 4/11/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var children: [Coordinator] { get set }
    var navigator: UINavigationController { get set }
    init(navigator: UINavigationController)

    func start()    
}

extension Coordinator {
    func destruct() {
        for (index, coordinator) in children.enumerated() where coordinator === self {
            print(#function, dump(coordinator), "destructed...")
            children.remove(at: index)
            break
        }
    }
    
    func navigate<C: Child>(to _: C.Type) {
        let child = C(navigator: navigator)
        children.append(child)
        child.parent = self
        child.start()
    }
    
    func show<C: Child>(_: C.Type) {
        let child = PrevCoordinator(navigator: navigator)
        child.present()
    }
}

protocol Childable: AnyObject {
    var parent: Coordinator? { get set }
    func present()
}

typealias Child = Coordinator & Childable
