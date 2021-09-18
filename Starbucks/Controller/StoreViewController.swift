//
//  StoreViewController.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

class StoreViewController: StarbucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemTeal
        title = "Stores"
    }
    override func commonInit() {
        setTabBarImage(imageName: "location.fill", title: "Stores")
    }
}
