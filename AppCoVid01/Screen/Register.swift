//
//  Register.swift
//  AppCoVid01
//
//  Created by Ong_Lao_Ngao on 6/17/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class Register: UIViewController {
    var viewAll: UIView = {
        let view = UIView()
        view.backgroundColor  = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var register: UILabel = {
        let label = UILabel()
        label.text = "R E G I S T E R"
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var viewCenter: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        return view
        
    }()
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    var mobileNumber = LabelView()
    var aadhaarNumber = LabelView()
    var newPassword = LabelView()
    var confirmPassword = LabelView()
    var buttonRegister = Button()
    
    var labelTermsPolicies: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.text = "By registering, you automatically accept the Terms & Policies of COVID - 19 app."
        label.numberOfLines = 3
        label.font  = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let yourAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 14),
        .foregroundColor: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00),
        .underlineStyle: NSUnderlineStyle.single.rawValue]
    //.double.rawValue, .thick.rawValue
    var buttonAccount: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
    }
    
    
    // layout
    func layout(){
        view.addSubview(viewAll)
        viewAll.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewAll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewAll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewAll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        viewAll.addSubview(register)
        register.topAnchor.constraint(equalTo: viewAll.topAnchor, constant: 40).isActive = true
        register.widthAnchor.constraint(equalTo: viewAll.widthAnchor, multiplier: 0.4).isActive = true
        register.heightAnchor.constraint(equalToConstant: 30).isActive = true
        register.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
        
        //layout viewCenter
        viewAll.addSubview(viewCenter)
        viewCenter.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
        viewCenter.centerYAnchor.constraint(equalTo: viewAll.centerYAnchor).isActive = true
        viewCenter.heightAnchor.constraint(equalTo: viewAll.heightAnchor, multiplier: 0.55).isActive = true
        viewCenter.widthAnchor.constraint(equalTo: viewAll.widthAnchor, multiplier: 0.9).isActive = true
        
        viewCenter.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: viewCenter.topAnchor, constant: 10).isActive = true
        stackView.leftAnchor.constraint(equalTo: viewCenter.leftAnchor, constant: 10).isActive = true
        stackView.rightAnchor.constraint(equalTo: viewCenter.rightAnchor, constant: -10).isActive = true
        stackView.bottomAnchor.constraint(equalTo: viewCenter.bottomAnchor, constant: -10).isActive = true
        
        // thêm và chỉnh sửa các thuộc tính trong stackView
        stackView.addArrangedSubview(mobileNumber)
        mobileNumber.label.text = "Mobile Number"
        stackView.addArrangedSubview(aadhaarNumber)
        aadhaarNumber.label.text = "Aadhear Number"
        stackView.addArrangedSubview(newPassword)
        newPassword.label.text = "New password"
        stackView.addArrangedSubview(confirmPassword)
        confirmPassword.label.text = "Confirm Password"
        stackView.addArrangedSubview(buttonRegister)
        buttonRegister.button.setTitle("Register", for: .normal)
        
        stackView.axis = .vertical
        // Các thuộc tính giãn theo stackView
        stackView.alignment = .fill
        // Khoảng cách của các thuộc tính trong stackView
        stackView.spacing = 10
        //
        stackView.distribution = .fillEqually
        
        // layout labelTermsPolicies
        viewAll.addSubview(labelTermsPolicies)
        labelTermsPolicies.topAnchor.constraint(equalTo: viewCenter.bottomAnchor, constant: 5).isActive = true
        labelTermsPolicies.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
        labelTermsPolicies.heightAnchor.constraint(equalTo: viewAll.heightAnchor, multiplier: 0.1).isActive = true
        labelTermsPolicies.widthAnchor.constraint(equalTo: viewCenter.widthAnchor, multiplier: 0.55).isActive = true
        
        //
        viewAll.addSubview(buttonAccount)
        let attributeString = NSMutableAttributedString(string: "Have account? Log In", attributes: yourAttributes)
        buttonAccount.setAttributedTitle(attributeString, for: .normal)
        buttonAccount.topAnchor.constraint(equalTo: labelTermsPolicies.bottomAnchor, constant: 10).isActive = true
        buttonAccount.widthAnchor.constraint(equalTo: labelTermsPolicies.widthAnchor, multiplier: 1).isActive = true
        buttonAccount.heightAnchor.constraint(equalToConstant: 20).isActive = true
        buttonAccount.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
    }
    
}
