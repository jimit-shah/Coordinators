//
//  ViewController.swift
//  Coordinators
//
//  Created by Jimit Shah on 8/5/19.
//  Copyright © 2019 Jimit Shah. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyButtonTapped(_ sender: UIButton) {
        coordinator?.buySubscription()
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        coordinator?.signupAccount()
    }
    
}

