//
//  Login.swift
//  AppCoVid01
//
//  Created by Ong_Lao_Ngao on 6/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class Login: UIViewController {
    var mobileNumber = LabelView()
    var passWord = LabelView()
    var buttonLogIn = Button()
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    var viewAll: UIView = {
        let view = UIView()
        view.backgroundColor  = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    var viewCenter: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        return view
        
    }()
    let yourAttributes: [NSAttributedString.Key: Any] = [
           .font: UIFont.systemFont(ofSize: 14),
           .foregroundColor: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00),
           .underlineStyle: NSUnderlineStyle.single.rawValue]
       //.double.rawValue, .thick.rawValue
    var newButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    var login: UILabel = {
        let label = UILabel()
        label.text = "L O G I N"
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //layout
    func layout(){
        view.addSubview(viewAll)
        viewAll.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewAll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewAll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewAll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        // layout login
        viewAll.addSubview(login)
        login.topAnchor.constraint(equalTo: viewAll.topAnchor, constant: 40).isActive = true
        login.widthAnchor.constraint(equalTo: viewAll.widthAnchor, multiplier: 0.4).isActive = true
        login.heightAnchor.constraint(equalToConstant: 30).isActive = true
        login.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
        
        //layout viewCenter
        viewAll.addSubview(viewCenter)
        viewCenter.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
        viewCenter.centerYAnchor.constraint(equalTo: viewAll.centerYAnchor).isActive = true
        viewCenter.heightAnchor.constraint(equalTo: viewAll.heightAnchor, multiplier: 0.4).isActive = true
        viewCenter.widthAnchor.constraint(equalTo: viewAll.widthAnchor, multiplier: 0.9).isActive = true
        
        viewCenter.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: viewCenter.topAnchor, constant: 10).isActive = true
        stackView.leftAnchor.constraint(equalTo: viewCenter.leftAnchor, constant: 10).isActive = true
        stackView.rightAnchor.constraint(equalTo: viewCenter.rightAnchor, constant: -10).isActive = true
        stackView.heightAnchor.constraint(equalTo: viewCenter.heightAnchor, multiplier: 0.8).isActive = true
        
        stackView.addArrangedSubview(mobileNumber)
        mobileNumber.label.text = "Mobile Number"
        stackView.addArrangedSubview(passWord)
        passWord.label.text = "Password"
        passWord.button.setTitle("Forgot?", for: .normal)
        stackView.addArrangedSubview(buttonLogIn)
        buttonLogIn.button.setTitle("Login", for: .normal)
        stackView.axis = .vertical
        // Các thuộc tính giãn theo stackView
        stackView.alignment = .fill
        // Khoảng cách của các thuộc tính trong stackView
        stackView.spacing = 10
        //
        stackView.distribution = .fillEqually
        
        viewCenter.addSubview(newButton)
        let attributeString = NSMutableAttributedString(string: "New User? Register Here", attributes: yourAttributes)
              newButton.setAttributedTitle(attributeString, for: .normal)
        newButton.bottomAnchor.constraint(equalTo: viewCenter.bottomAnchor, constant: -5).isActive = true
        newButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        newButton.widthAnchor.constraint(equalTo: viewCenter.widthAnchor, multiplier: 0.7).isActive = true
        newButton.centerXAnchor.constraint(equalTo: viewCenter.centerXAnchor).isActive = true
    }
    
}
