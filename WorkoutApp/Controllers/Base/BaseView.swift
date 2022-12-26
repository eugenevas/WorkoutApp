//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 26.12.2022.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//@objc - т.к. методы в extension буду переопределены
@objc extension BaseView {
    func setupViews(){}
    
    func constraintViews(){}
    
    func configureAppearance(){
        backgroundColor = .white
    }
    
}

