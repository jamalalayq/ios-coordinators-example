//
//  Initializable.swift
//  coordinators
//
//  Created by Jamal alayq on 4/11/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import Foundation
import UIKit

protocol Initializable {
    static func instance<Controller: UIViewController>(_: Controller.Type) -> Self
    static func instantiate(from storyboard: UIStoryboard) -> Self
}

extension Initializable where Self: UIViewController {
    static func instance<Controller: UIViewController>(_: Controller.Type) -> Self {
        let name = String(describing: self)
        let screen = Controller(nibName: name, bundle: .init(for: Controller.self)) as! Self
        return screen
    }

    static func instantiate(from storyboard: UIStoryboard) -> Self {
        let id = String(describing: self)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}

extension UIViewController: Initializable {
    
}
