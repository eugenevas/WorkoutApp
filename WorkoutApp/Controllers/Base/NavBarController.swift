//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 14.11.2022.
//

import Foundation
import UIKit


final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    
    private func configure() {
        view.backgroundColor = .white
        //чтобы view не заканчивался по границам statusBar
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with:  Resources.Colors.separator, height: 1)
    }
}
