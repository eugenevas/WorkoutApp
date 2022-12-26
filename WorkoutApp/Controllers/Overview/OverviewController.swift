//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 06.11.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//            navBar.heightAnchor.constraint(equalToConstant: 156)
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}


