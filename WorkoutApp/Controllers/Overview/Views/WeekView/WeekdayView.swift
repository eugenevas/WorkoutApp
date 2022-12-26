//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 26.12.2022.
//

import UIKit


extension WeekView {
    final class WeekdayView: BaseView {
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        
        func confifure(with index: Int, and name: String) {
            
            //Определение текущего дня (начала недели)
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            
            //Если даты выше равны, то красим в цвет active, если не равны, то в
            backgroundColor = isTooday ? Resources.Colors.active : Resources.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : Resources.Colors.inactive
            
            dateLabel.text = "\(day )"
            dateLabel.textColor = isTooday ? .white : Resources.Colors.inactive
            
        }
    }
}


extension WeekView.WeekdayView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
        
        
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        backgroundColor = .gray.withAlphaComponent(0.1)
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resources.Fonts.helveticaRegular(with: 10)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        //Насколько элементы должны распологатаься пропорционально
        stackView.axis = .vertical
        
    }
}
