//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 23.12.2022.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let lable = UILabel()
    private let iconView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setTitle(_ title: String) {
        lable.text = title
    }
    
}

private extension SecondaryButton {
    
    func addViews() {
        addView(lable)
        addView(iconView)
    }
    
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            //Центр по высоте view
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            //Правый отступ
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10)
        ])
    }
    
    func configure() {
        backgroundColor = Resources.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
        

        lable.textColor = Resources.Colors.active
        lable.textAlignment = .center
        lable.font = Resources.Fonts.helveticaRegular(with: 15)
        

        //Использование более точную установку цвета
        iconView.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resources.Colors.active
    }
}


