//
//  HomeHeaderView.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 12/09/21.
//

import UIKit

class HomeHeaderView: UIView{
    // Greeting
    let greeting = UILabel()
    // Inbox Button
    let inboxButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureStyle()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// Extension to implement style and layout

extension HomeHeaderView{
    func configureStyle(){
        // Greeting
        greeting.translatesAutoresizingMaskIntoConstraints = false
        greeting.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        greeting.text = "Welcome, Sree Sai Raghava"
        greeting.numberOfLines  = 0
        greeting.lineBreakMode = .byWordWrapping
        // Inbox Button
        inboxButton.translatesAutoresizingMaskIntoConstraints = false
        inboxButton.setTitleColor(.label, for: .normal)
        inboxButton.setTitle("Inbox", for: .normal)
    }
    func configureLayout(){
        addSubview(greeting)
        addSubview(inboxButton)
        // Activate NSLayout
        NSLayoutConstraint.activate([
            greeting.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            greeting.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: greeting.trailingAnchor, multiplier: 1),
            
            inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greeting.bottomAnchor, multiplier: 2),
            inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1)
            
        ])
    }
}
