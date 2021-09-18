//
//  ViewController.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

class HomeViewController: StarbucksViewController {
    
    let headerView = HomeHeaderView()
    // Create a tableView
    var tableView = UITableView()
    // TableView vars
    let cellId = "cellId"
    let tiles = [
        "Star balance",
        "Bonus stars",
        "Try these",
        "Welcome back",
        "Uplifting"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        setupNavBar()
        configureStyle()
        configureLayout()
    }
    override func commonInit() {
        setTabBarImage(imageName: "house.fill", title: "Home")
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.topItem?.title = "Hello Sree Sai Raghava"
    }


}

// Extension: Configuring Style and Layout

extension HomeViewController {
    func configureStyle(){
        headerView.translatesAutoresizingMaskIntoConstraints = false
    }
    func configureLayout(){
        view.addSubview(headerView)
        //Activate NSLayoutConstraints
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

//MARK: - TableView

extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = tiles[indexPath.row]
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
