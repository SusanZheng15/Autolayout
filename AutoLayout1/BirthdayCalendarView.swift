//
//  BirthdayCalendarView.swift
//  AutoLayout1
//
//  Created by Susan Zheng on 5/1/18.
//  Copyright © 2018 Susan Zheng. All rights reserved.
//

import UIKit

private var calendarView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.green
    return view
}()

class BirthdayCalendarView: UIView {
    override func draw(_ rect: CGRect) {
        
        setUpCalendar()
    }
    
    
    private func setUpCalendar(){
        self.addSubview(calendarView)
        
        calendarView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        calendarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        calendarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        calendarView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        
    }
 

}
