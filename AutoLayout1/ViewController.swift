//
//  ViewController.swift
//  AutoLayout1
//
//  Created by Susan Zheng on 5/1/18.
//  Copyright © 2018 Susan Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let birthdayView = BirthdayCalendarView()
  
    private var dataArray: NSArray = []
    
    let birthdayImageView: UIImageView = {
        let imageView = UIImageView.init(image: #imageLiteral(resourceName: "birthday"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    let birthdayDescription: UITextView = {
        let textView = UITextView()
        
        return textView
    }()
   
    private let leftButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("BACK", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let rightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let middleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        setupLayout()
    }
    
    
    func populateData(array: NSArray){
        self.dataArray = array
    }
    
    private func setupLayout(){
        
        let topContainer = UIView()
        topContainer.backgroundColor = UIColor.purple
        
        view.addSubview(topContainer)
        
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        topContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topContainer.addSubview(birthdayImageView)
        
        birthdayImageView.centerXAnchor.constraint(equalTo: topContainer.centerXAnchor).isActive = true
        birthdayImageView.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor).isActive = true
        birthdayImageView.heightAnchor.constraint(equalTo: topContainer.heightAnchor, multiplier: 0.5).isActive = true
        birthdayImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true

        topContainer.addSubview(birthdayDescription)
        
        setTextViewAttributes(textView: birthdayDescription, textViewText: "Happy Birthday")
        birthdayDescription.topAnchor.constraint(equalTo: birthdayImageView.bottomAnchor, constant: 0).isActive = true
        birthdayDescription.leadingAnchor.constraint(equalTo: topContainer.leadingAnchor, constant: 10).isActive = true
        birthdayDescription.trailingAnchor.constraint(equalTo: topContainer.trailingAnchor, constant: -10).isActive = true
        birthdayDescription.bottomAnchor.constraint(equalTo: topContainer.bottomAnchor, constant: -10).isActive = true
        
        let bottomStackView = UIStackView(arrangedSubviews: [leftButton, middleView, rightButton])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.distribution = .fillEqually
        
        view.addSubview(bottomStackView)
        
        bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        bottomStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(birthdayView)
        
        birthdayView.translatesAutoresizingMaskIntoConstraints = false
        birthdayView.topAnchor.constraint(equalTo: topContainer.bottomAnchor, constant: 0).isActive = true
        birthdayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        birthdayView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        birthdayView.bottomAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: 0).isActive = true
        
    }
   
    
    func setTextViewAttributes(textView: UITextView, textViewText: String){
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = UIColor.blue
        
        let attributedText = NSMutableAttributedString(string: textViewText, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        textView.attributedText = attributedText

    }

}

