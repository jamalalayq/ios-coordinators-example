//
//  HomeRouter.swift
//  coordinators
//
//  Created by MAC on 4/18/20.
//  Copyright © 2020 jamal.alayq. All rights reserved.
//

import Foundation

final class HomeRouter: Router {
    weak var controller: ViewController?
    
    init(controller: ViewController?) {
        self.controller = controller
    }
    
    func move(to screen: Action) {
        switch screen {
        case .next(name: let name):
            openNextScreen(with: name)
        case .previous:
            break
        }
    }
    
    private func openNextScreen(with name: String?) {
        let next = NextScreen()
        next.name = name
        controller?.navigationController?.pushViewController(next, animated: true)
    }
}

extension HomeRouter {
    enum Action {
        case next(name: String)
        case previous
    }
}
