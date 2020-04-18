//
//  Router.swift
//  coordinators
//
//  Created by MAC on 4/18/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import Foundation
import UIKit

protocol Router: AnyObject {
    associatedtype Screen = RawRepresentable
    associatedtype Target = Controller
    
    var controller: Target? { get set }
    init(controller: Target?)
    
    func move(to screen: Screen)
}

/*
 extension UIViewController {
 func add(_ child: UIViewController) {
 addChild(child)
 view.addSubview(child.view)
 child.didMove(toParent: self)
 }
 
 func remove() {
 // Just to be safe, we check that this view controller
 // is actually added to a parent before removing it.
 guard parent != nil else {
 return
 }
 
 willMove(toParent: nil)
 view.removeFromSuperview()
 removeFromParent()
 }
 }
 */
