//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 29.11.2022.
//


import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings 
    }

}
