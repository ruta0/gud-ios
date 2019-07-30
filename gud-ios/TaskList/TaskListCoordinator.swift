//
//  TaskListCoordinator.swift
//  gud-ios
//
//  Created by sudofluff on 7/29/19.
//  Copyright © 2019 sudofluff. All rights reserved.
//

import UIKit

class TaskListCoordinator: NSObject {
  private let presenter: AppTabBarController
  
  private var viewController: TaskListViewController?
  
  private var navigationController: TaskListNavigationController?
  
  init(presenter: AppTabBarController) {
    self.presenter = presenter
    super.init()
  }
}

extension TaskListCoordinator: Coordinatable {
  func start() {
    let vc = TaskListViewController()
    let navController = TaskListNavigationController(rootViewController: vc)
    
    vc.delegate = self
    self.viewController = vc
    self.navigationController = navController
    
    if self.presenter.viewControllers == nil {
      self.presenter.setViewControllers([navController], animated: true)
    } else {
      self.presenter.viewControllers?.append(navController)
    }
  }
}

extension TaskListCoordinator: TaskListViewControllerDelegate {
  func controller(didTapAddButton button: UIBarButtonItem) {
    print(123)
  }
}
