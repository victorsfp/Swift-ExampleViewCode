//
//  ViewController.swift
//  ExampleView
//
//  Created by Victor Feitosa on 18/01/22.
//

import UIKit

class IntroViewController: UIViewController {
    
    private var customView: IntroView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildView()
    }
    
    
    private func buildView(){
        view = IntroView()
        customView = view as? IntroView
    }

}

