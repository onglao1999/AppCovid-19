//
//  LabelView.swift
//  AppCoVid01
//
//  Created by Ong_Lao_Ngao on 6/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class LabelView: UIView {
    var label: UILabel = {
       let lable = UILabel()
        lable.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var button: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        super.draw(frame)
        textField.layer.cornerRadius = 5
    }
    
    // layout
    func layout(){
        self.addSubview(label)
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 1).isActive = true
        label.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 1).isActive = true
        label.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        self.addSubview(button)
        button.centerYAnchor.constraint(equalTo: label.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalTo: label.heightAnchor, multiplier: 1).isActive = true
        button.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
        button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -1).isActive = true
        
        self.addSubview(textField)
        textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5).isActive = true
        textField.leftAnchor.constraint(equalTo: label.leftAnchor, constant: 0).isActive = true
        textField.rightAnchor.constraint(equalTo: button.rightAnchor, constant: 0).isActive = true
        textField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true

    }
}
