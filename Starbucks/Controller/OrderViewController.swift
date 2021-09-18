//
//  OrderViewController.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

class OrderViewController: StarbucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemOrange
        title = "Order"
    }
    override func commonInit() {
        setTabBarImage(imageName: "arrow.up.bin.fill", title: "Order")
    }
}
