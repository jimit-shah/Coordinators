//
//  Coordinators.swift
//  Coordinators
//
//  Created by Jimit Shah on 8/5/19.
//  Copyright © 2019 Jimit Shah. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
