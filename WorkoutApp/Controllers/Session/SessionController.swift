//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 29.11.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //чтобы название title and tabBarItem отличались
//        title = "High Intensity Cardio"
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }

}
