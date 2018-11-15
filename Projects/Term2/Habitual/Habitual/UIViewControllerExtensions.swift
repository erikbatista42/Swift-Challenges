//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by luxury on 11/14/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

extension UIViewController {
    // Static methods can not be overrode by a subclass
    static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
    }
}
