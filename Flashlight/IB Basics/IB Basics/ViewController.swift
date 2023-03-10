//
//  ViewController.swift
//  IB Basics
//
//  Created by Kate Jang on 10/10/22.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func changeColor(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

