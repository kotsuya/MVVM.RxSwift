//
//  AppCoodinator.swift
//  MVVM.RxSwift
//
//  Created by seunghwan.yoo on 2020/05/19.
//  Copyright © 2020 seunghwan.yoo. All rights reserved.
//

import Foundation
import UIKit

class AppCoodinator {
    
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let viewController = ViewController.instantiate(viewModel: RestaurantsListViewModel())
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
