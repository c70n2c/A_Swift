//
//  AViewController.swift
//  A_Swift
//
//  Created by zowell on 2019/10/29.
//  Copyright © 2019 Chancc. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    
    var button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 200, width: 80, height: 80)
        return button
    }()
    
    var button1: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 188, y: 200, width: 80, height: 80)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        
        button.backgroundColor = .blue
        
        button1.backgroundColor = .yellow
        
        button.addTarget(self, action: #selector(didClick1), for: .touchUpInside)
        view.addSubview(button)
        
        button1.addTarget(self, action: #selector(didClick2), for: .touchUpInside)
        view.addSubview(button1)
    }
    

    @objc func didClick1() {
        present(BViewController(), animated: true, completion: nil)
    }
    
    @objc func didClick2() {
        dismiss(animated: true, completion: nil)
    }
    

}
