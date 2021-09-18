//
//  GiftViewController.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

class GiftViewController: StarbucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemGreen
        title = "Gift"
    }
    override func commonInit() {
        setTabBarImage(imageName: "gift.fill", title: "Gift")
    }
}
