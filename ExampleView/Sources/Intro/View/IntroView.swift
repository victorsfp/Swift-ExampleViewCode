//
//  IntroView.swift
//  ExampleView
//
//  Created by Victor Feitosa on 18/01/22.
//

import Foundation
import UIKit

class IntroView: UIView {
    
    private lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        
        label.translatesAutoresizingMaskIntoConstraints = false //disativa o auto resize para eu mesmo gerenciar
        
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "(DevPoli)"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.darkGray
        
        label.translatesAutoresizingMaskIntoConstraints = false //disativa o auto resize para eu mesmo gerenciar
        
        
        return label
    }()
    
    init() {
        super.init(frame: .zero) //FRAME ZERO POIS A VIEW CONTROLLER QUE VAI DEFINIR
        backgroundColor = .white
        addSubViews()
        constrainHelloLabel()
        constrainNameLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubViews(){
        addSubview(helloLabel)
        addSubview(nameLabel)
        
    }
    
    private func constrainHelloLabel(){
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        constraint.forEach { item in
            item.isActive = true
        }
    }
    
    private func constrainNameLabel(){
        let constraint = [
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 12),
            nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
        ]
        constraint.forEach { item in
            item.isActive = true
        }
    }
    
}
