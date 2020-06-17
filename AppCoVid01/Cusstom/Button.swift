//
//  Button.swift
//  AppCoVid01
//
//  Created by Ong_Lao_Ngao on 6/17/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class Button: UIView {
    var label: UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
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
        button.layer.cornerRadius = 5
    }
    
    // layout
    func layout(){
        self.addSubview(label)
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 1).isActive = true
        label.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 1).isActive = true
        label.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        
        self.addSubview(button)
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5).isActive = true
        button.leftAnchor.constraint(equalTo: label.leftAnchor, constant: 0).isActive = true
        button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -1).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true

    }
}
