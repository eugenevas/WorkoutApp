//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 26.12.2022.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    
    private let stackView = UIStackView()
    
    
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        addView(stackView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        stackView.spacing = 7
        //Насколько элементы должны распологатаься пропорционально
        stackView.distribution = .fillEqually
        
        //Return first 3 symbols of week days
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.confifure(with: index, and: name)
            //Добавляет представление в конец упорядоченного массива подпредставлений.
            stackView.addArrangedSubview(view)
            
        }
    }
}
