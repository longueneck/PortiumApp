//
//  ViewController.swift
//  PortiumApp
//
//  Created by Kevin Longue on 03/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var backImage: UIImageView = {
        let bg = UIImageView()
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.image = UIImage(named: "fundo")
        bg.contentMode = .scaleAspectFit
        return bg
    }()
    
    var maskBackgroung: UIView = {
        let mask = UIView()
        mask.translatesAutoresizingMaskIntoConstraints = false
        mask.backgroundColor = .purple
        mask.contentMode = .scaleAspectFit
        mask.alpha = 0.3
        
        return mask
    }()
    
    var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "logobranca")
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    var logoName: UILabel = {
        let brand = UILabel()
        brand.translatesAutoresizingMaskIntoConstraints = false
        brand.text = "Portium"
        brand.textColor = .white
        brand.font = UIFont.boldSystemFont(ofSize: 40)
        return brand
    }()
    
    var button1: UIButton = {
        let buttonOne = UIButton()
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.setTitle("Sou um candidato", for: .normal)
        buttonOne.backgroundColor = .purple
        buttonOne.setTitleColor(.white, for: .normal)
        buttonOne.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        buttonOne.layer.cornerRadius = 8
        return buttonOne
    }()
    
    var button2: UIButton = {
        let buttonTwo = UIButton()
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.setTitle("Sou um recrutador", for: .normal)
        buttonTwo.backgroundColor = .white
        buttonTwo.setTitleColor(.purple, for: .normal)
        buttonTwo.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        buttonTwo.layer.cornerRadius = 8
        return buttonTwo
    }()
    
    var visitante: UILabel = {
        let visit = UILabel()
        visit.translatesAutoresizingMaskIntoConstraints = false
        visit.text = "continuar como visitante"
        visit.textColor = .white
        visit.textAlignment = .center
        visit.font = UIFont.boldSystemFont(ofSize: 16)
        return visit
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubs()
        configureConstraints()
    }
    
    func addSubs(){
        self.view.addSubview(backImage)
        self.view.addSubview(maskBackgroung)
        self.view.addSubview(logoImage)
        self.view.addSubview(logoName)
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(visitante)
    }
    
    func configureConstraints(){
        NSLayoutConstraint.activate ([
        
        backImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
        backImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        backImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
        backImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
        
        maskBackgroung.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
        maskBackgroung.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        maskBackgroung.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
        maskBackgroung.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
        
        logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 280),
        
        logoName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        logoName.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
        
        button1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
        button1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
        button1.topAnchor.constraint(equalTo: logoName.bottomAnchor, constant: 200),
        button1.heightAnchor.constraint(equalToConstant: 40),
        
        button2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
        button2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
        button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 24),
        button2.heightAnchor.constraint(equalToConstant: 40),
        
        visitante.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
        visitante.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
        visitante.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 16),
        
        ])
    }
    
    
    
    
    
    
    
    
    
}

