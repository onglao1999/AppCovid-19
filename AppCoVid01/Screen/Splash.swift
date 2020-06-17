//
//  Splash.swift
//  AppCoVid01
//
//  Created by Ong_Lao_Ngao on 6/15/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class Splash: UIViewController {
    var viewAll: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var imageIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "iconCovid")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var imageCovid: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "COVID - 19")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    var lableCovid: UILabel = {
       let lable = UILabel()
        lable.text = "Test booking app"
        lable.textColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var a = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutScreen()
        
        // ẩn navigation
        navigationController?.isNavigationBarHidden = true
    }
    
    //layout
    func layoutScreen(){
        //layout viewAll
        view.addSubview(viewAll)
        viewAll.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewAll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewAll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewAll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        // layout imageIcon
        viewAll.addSubview(imageIcon)
        imageIcon.centerXAnchor.constraint(equalTo: viewAll.centerXAnchor).isActive = true
        imageIcon.topAnchor.constraint(equalTo: viewAll.topAnchor, constant: view.frame.height/2.7).isActive = true
        imageIcon.widthAnchor.constraint(equalTo: viewAll.widthAnchor, multiplier: 0.5).isActive = true
        imageIcon.heightAnchor.constraint(equalTo: imageIcon.widthAnchor, multiplier: 0.7).isActive = true
        
        // layout imageCovid
        viewAll.addSubview(imageCovid)
        imageCovid.topAnchor.constraint(equalTo: imageIcon.bottomAnchor, constant: 40).isActive = true
        imageCovid.widthAnchor.constraint(equalTo: imageIcon.widthAnchor, multiplier: 0.8).isActive = true
        imageCovid.heightAnchor.constraint(equalTo: imageCovid.widthAnchor, multiplier: 0.15).isActive = true
        imageCovid.centerXAnchor.constraint(equalTo: imageIcon.centerXAnchor).isActive = true
        
        //layout lableCovid
        viewAll.addSubview(lableCovid)
        lableCovid.topAnchor.constraint(equalTo: imageCovid.bottomAnchor, constant: 30).isActive = true
        lableCovid.centerXAnchor.constraint(equalTo: imageCovid.centerXAnchor).isActive = true
        lableCovid.widthAnchor.constraint(equalTo: imageCovid.widthAnchor, multiplier: 1).isActive = true
        lableCovid.heightAnchor.constraint(equalTo: lableCovid.widthAnchor, multiplier: 0.2).isActive = true
        lableCovid.textAlignment = .center
    }
}
