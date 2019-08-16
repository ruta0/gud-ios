//
//  FolderListViewControllerDelegate.swift
//  gud-ios
//
//  Created by sudofluff on 7/29/19.
//  Copyright © 2019 sudofluff. All rights reserved.
//

import UIKit

protocol FolderListViewControllerDelegate: NSObjectProtocol {
  func controller(didTapAddButton button: UIBarButtonItem)
  
  func controller(didSelectFolder folder: Folder)
}