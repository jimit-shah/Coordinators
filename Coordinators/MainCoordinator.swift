//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Jimit Shah on 8/5/19.
//  Copyright © 2019 Jimit Shah. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        setupNavbar()
    }
    
    func setupNavbar() {
        let navigationBar = self.navigationController.navigationBar
        navigationBar.barStyle = .black
        navigationBar.isTranslucent = true
        navigationBar.tintColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        vc.title = "Home"
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let vc = LoginViewController.instantiate()
        vc.coordinator = self
        vc.title = "Login"
        navigationController.pushViewController(vc, animated: true)
    }
    
    func signupAccount() {
        let vc = SignupViewController.instantiate()
        vc.coordinator = self
        vc.title = "Signup"
        navigationController.pushViewController(vc, animated: true)
    }
}
