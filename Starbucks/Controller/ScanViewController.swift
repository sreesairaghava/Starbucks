//
//  ScanViewController.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

class ScanViewController: StarbucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemIndigo
        title = "Scan"
    }
    override func commonInit() {
        setTabBarImage(imageName: "qrcode", title: "Scan")
    }
}
